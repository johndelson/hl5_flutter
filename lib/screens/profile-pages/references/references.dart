import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:holedo/constant/sizedbox.dart';
import 'package:holedo/screens/profile-pages/profile-overview/profile-overview-sec3.dart';

import '../../../common/popUpHeadMenu.dart';
import '../profile-edit/profile-edit.dart';

class References extends StatefulWidget {
  final isEditable;
  final referenceCardKey;
  final referenceCard_H;
  final referenceCard_W;

  References({
    Key? key,
    required this.isEditable,
    this.referenceCardKey,
    this.referenceCard_H,
    this.referenceCard_W,
  }) : super(key: key);

  @override
  _ReferencesState createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  Widget buildReferencesCard(
    String img,
    String title,
    String subTitle,
    String description,
    _height,
    _width,
    referenceCardKey,
  ) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            key: referenceCardKey,
            width: SS.sW(context) * .30,
            padding: const EdgeInsets.all(6),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Image(
                    width: 45,
                    height: 45,
                    image: NetworkImage(img),
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff272E41)),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Text(
                      subTitle,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7C8990),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black, fontSize: 30),
                      children: [
                        WidgetSpan(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 2),
                              child: Card(
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1.0)),
                                child: const Icon(
                                  Icons.format_quote_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: description,
                          style: const TextStyle(
                              height: 1.2,
                              fontSize: 14,
                              color: Color(0xff7C8990),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        widget.isEditable
            ? ProfileEdit.buildProfileEdit(
                width: SS.sW(context) * .30,
                height: 177,
                popUpEdit: () {
                  PopUpHeadMenu.buildReferencesCardPopUp(context);
                },
                showAddButton: true,
                popUpAdd: () {
                  PopUpHeadMenu.buildReferencesCardPopUp(context);
                })
            : Container(),
      ],
    );
  }

  Future<String?> buildProfileCard(height, width) {
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              child: ListView(
                children: [buildProfilePictureCard()],
              ),
            ),
          );
        });
  }

  buildProfilePictureCard() {
    return Form(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: const Color(0xFF0d9bdc),
                  child: const Center(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Profile picture',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    Text(
                        'Your profile picture will be used on your profile and throughout the site.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xffbdb5c2)))
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2019/10/20/20/02/nature-4564618_960_720.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.delete),
                          label: Text('Delete photo'),
                        )
                      ]),
                ),
                Column(children: []),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: _width * 0.070, vertical: _height * .02),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: StaggeredGrid.count(
                      crossAxisCount: 2,
                      children: List.generate(
                        widget.referenceCardKey.length,
                        (index) => buildReferencesCard(
                            'https://images.pexels.com/photos/712521/pexels-photo-712521.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                            'Sarah Lee MHL',
                            'General Manager, One & Only Hotel',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                            _height,
                            _width,
                            widget.referenceCardKey[index]),
                      ),
                    ),
                  ),
                  // Expanded(flex:1,child: ProfileOverviewSec3()),
                  Expanded(child: ProfileOverviewSec3()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}