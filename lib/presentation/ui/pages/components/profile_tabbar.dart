import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:holedo/application/shared/providers.dart';
import 'package:holedo/db_data.dart';
import 'package:holedo/presentation/ui/components/custom_elevated_button.dart';
import 'package:holedo/presentation/ui/components/person_avatar.dart';
import 'package:holedo/presentation/utill/color_resources.dart';
import 'package:holedo/presentation/utill/dimensions.dart';
import 'package:holedo/presentation/utill/responsive.dart';
import 'package:holedo/presentation/utill/styles.dart';

class ProfileTabbar extends StatelessWidget {
  const ProfileTabbar({
    Key? key,
    required this.tabController,
    this.isMine = false,
    this.onTap,
  }) : super(key: key);

  final TabController tabController;
  final bool isMine;
  final void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    // final isEditable = Provider.of<ProfileProvider>(context).isProfileEditable;
    final getUserProfileData = DbData.getUserProfileData;
    final bool isTab = isTablet(context);
    final double fontSize = isTab ? 12.5 : 14;

    final EdgeInsets tabPadding = isTab
        ? const EdgeInsets.symmetric(horizontal: 0, vertical: 10)
        : const EdgeInsets.all(10);
    return Container(
      decoration: BoxDecoration(
        color: Cr.whiteColor,
        boxShadow: Styles.defaultBoxShadow,
      ),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              PersonAvatar(avatarSize: (isTab) ? 24 : null),
              isTab ? Di.SBWS : Di.SBWD,
              Text(
                getUserProfileData.fullName ?? "",
                // "Noberto Holden",
                style: h4Bold,
                // de
              ),
              // Di.SBWS,
              // Text(
              //   getUserProfileData.currentMembershipGrade?.title ?? "",
              //   // "MHL",
              //   style: dividerTextSmall,
              //   // de
              // ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                TabBar(
                  onTap: onTap,
                  labelColor: Cr.accentBlue1,
                  unselectedLabelColor: Cr.darkGrey2,
                  indicatorColor: Cr.accentBlue1,
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
                  controller: tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  isScrollable: true,
                  automaticIndicatorColorAdjustment: true,
                  tabs: [
                    Padding(
                      padding: tabPadding,
                      child: Text(
                        'Profile overview',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SourceSansPro',
                          fontSize: fontSize,
                        ),
                      ),
                    ),
                    Padding(
                        padding: tabPadding,
                        child: Text(
                          'Timeline',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSansPro',
                            fontSize: fontSize,
                          ),
                        )),
                    Padding(
                      padding: tabPadding,
                      child: Text(
                        'Articles',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSansPro',
                            fontSize: fontSize),
                      ),
                    ),
                    Padding(
                      padding: tabPadding,
                      child: Text(
                        'Activity',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSansPro',
                            fontSize: fontSize),
                      ),
                    ),
                    Padding(
                      padding: tabPadding,
                      child: Text(
                        'References',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SourceSansPro',
                            fontSize: fontSize),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          isMine ? EditProfileButton() : Di.ESB,
        ],
      ),
    );
  }
}

class EditProfileButton extends ConsumerWidget {
  const EditProfileButton({
    Key? key,
    this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context, ref) {
    final isProfileEditable =
        ref.watch(profileNotifierProvider).isProfileEditable;
    return CustomElevatedButton(
      width: width,
      text: isProfileEditable ? "Done Editing" : null,
      backgroundColor: isProfileEditable ? Cr.green1 : null,
      icon: isProfileEditable
          ? const Icon(
              Icons.check,
              size: Di.FSD,
            )
          : null,
      onPressed: () {
        ref
            .read(profileNotifierProvider.notifier)
            .changeIsProfieEditableState(!isProfileEditable);
      },
    );
  }
}
