import 'package:flutter/material.dart';
import 'package:holedo/db_data.dart';
import 'package:holedo/models/holedoapi/expertise.dart';
import 'package:holedo/models/holedoapi/holedoapi.dart';
import 'package:holedo/presentation/ui/components/custom_checkbox_with_title.dart';

import 'package:holedo/presentation/utill/color_resources.dart';
import 'package:holedo/presentation/utill/dimensions.dart';
import 'package:holedo/presentation/ui/components/custom_elevated_button.dart';

import 'package:holedo/presentation/utill/nav.dart';
import 'package:holedo/presentation/utill/styles.dart';

class ProfileExpertiseDialogWidget extends StatefulWidget {
  const ProfileExpertiseDialogWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileExpertiseDialogWidget> createState() =>
      _ProfileExpertiseDialogWidgetState();
}

class _ProfileExpertiseDialogWidgetState
    extends State<ProfileExpertiseDialogWidget> {
  late List<Expertise> expertise;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    expertise = DbData.getUserProfileData.expertise ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Cr.darkGrey4,
      width: 655,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 46,
            decoration: BoxDecoration(
              color: Cr.whiteColor,
              boxShadow: Styles.defaultBoxShadow,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Expertise",
                      style: h2Regular,
                    ),
                    GestureDetector(
                      onTap: () => Nav.pop(context),
                      child: const Icon(
                        Icons.close,
                        size: 24,
                        color: Cr.accentBlue1,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Cr.whiteColor,
            padding: const EdgeInsets.all(Di.PSL),
            margin: const EdgeInsets.all(Di.PSL),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "What are your areas of expertise",
                      style: h5Bold,
                    ),
                    Di.SBWES,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.help,
                          color: Cr.accentBlue1,
                          size: 12,
                        )
                      ],
                    ),
                  ],
                ),
                Di.SBHES,
                Row(
                  children: [
                    Expanded(
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: _controller,
                          style: bodySmallRegular.copyWith(
                            color: Cr.darkGrey1,
                          ),
                          decoration:
                              Styles.popUpDialogTextFieldInputDecoration,
                        ),
                      ),
                    ),
                    Di.SBWES,
                    CustomElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(
                            () {
                              expertise.add(
                                expertise[0].copyWith(
                                  id: 2342,
                                  title: _controller.text.toString(),
                                ),
                                // Expertise(
                                //   title: _controller.text.toString(),
                                // ),
                              );
                            },
                          );
                          _controller.clear();
                        }
                      },
                      borderColor: Cr.accentBlue2,
                      makeWidthNull: true,
                      height: 36,
                      donotShowIcon: true,
                      backgroundColor: Cr.accentBlue3,
                      child: Text(
                        "Add to lists",
                        style: bodySmallRegular.copyWith(
                          color: Cr.accentBlue1,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Di.PSL,
                    vertical: 24,
                  ),
                  child:
                      //  widget.userProfileData.expertise != null
                      //     ?
                      Wrap(
                    children: List<Widget>.generate(
                      expertise.length,
                      (int idx) {
                        return Padding(
                          padding: const EdgeInsets.all(Di.PSES),
                          child: CustomChoiceWithTrailingIcon(
                            title: expertise[idx].title ?? "",
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  // : Di.ESB,
                ),
                Di.SBHS,
                SizedBox(
                  height: 54,
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomElevatedButton(
                            borderColor: Cr.accentBlue2,
                            makeWidthNull: true,
                            onPressed: () => Nav.pop(context),
                            height: 36,
                            donotShowIcon: true,
                            backgroundColor: Cr.accentBlue3,
                            child: Text(
                              "Cancel",
                              style: bodySmallRegular.copyWith(
                                color: Cr.accentBlue1,
                              ),
                            ),
                          ),
                          Di.SBWES,
                          CustomElevatedButton(
                            borderColor: Cr.accentBlue2,
                            makeWidthNull: true,
                            onPressed: () async {
                              Nav.pop(context);
                              await User(
                                expertise: expertise,
                              ).save(DbData.getUserProfileData);
                            },
                            height: 36,
                            donotShowIcon: true,
                            backgroundColor: Cr.accentBlue1,
                            child: Text(
                              "Save",
                              style: bodySmallRegular.copyWith(
                                color: Cr.whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
