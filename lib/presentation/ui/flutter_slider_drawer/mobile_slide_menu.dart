import 'package:flutter/material.dart';
import 'package:holedo/db_data.dart';
import 'package:holedo/models/models.dart';
import 'package:holedo/presentation/ui/components/custom_appbar.dart';
import 'package:holedo/presentation/ui/components/custom_icon_button.dart';
import 'package:holedo/presentation/ui/components/person_avatar.dart';
import 'package:holedo/presentation/ui/components/text_with_background.dart';
import 'package:holedo/presentation/utill/color_resources.dart';
import 'package:holedo/presentation/utill/dimensions.dart';
import 'package:holedo/presentation/utill/styles.dart';
import 'package:routemaster/routemaster.dart';
export 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
export 'package:holedo/layouts/cards/holedo_cards.dart';
export 'package:holedo/layouts/pages/home_page.dart';
export 'package:holedo/layouts/pages/recruitment_page.dart';
export 'package:holedo/layouts/pages/profile_page.dart';
export 'package:holedo/layouts/pages/category_page.dart';
export 'package:holedo/layouts/pages/search_page.dart';
export 'package:holedo/layouts/pages/login_page.dart';
export 'package:holedo/layouts/pages/newsfront_page.dart';
export 'package:holedo/layouts/pages/news_page.dart';
export 'package:holedo/layouts/pages/jobsfront_page.dart';
export 'package:holedo/layouts/pages/jobs_page.dart';

class MobileSlideMenu extends StatefulWidget {
  const MobileSlideMenu({Key? key, this.onCloseTap}) : super(key: key);

  final void Function()? onCloseTap;
  @override
  State<MobileSlideMenu> createState() => _MobileSlideMenuState();
}

class _MobileSlideMenuState extends State<MobileSlideMenu> {
  bool inDrawer = true;

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final menuItems = Get.put(HoledoDatabase()).menuItems;

    return Container(
      color: Cr.colorPrimary,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Di.SBHS,
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: AppbarEmailButton(),
                  ),
                  Di.DVZW,
                  AppbarNotificationsButton(),
                  Di.DVZW,
                  AppbarConnectionRequestButton(),
                  Di.DVZW,
                  CustomIconButton(
                    onTap: widget.onCloseTap,
                    icon: Icon(
                      Icons.close,
                      color: Cr.darkBlue9,
                    ),
                  ),
                ],
              ),
            ),
            Di.SBHETS,
            Di.DHDT,
            Padding(
              padding: EdgeInsets.only(
                left: Di.PSETS,
              ),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _MobileMenu(
                        title: "Home",
                        onTap: () {
                          Routemaster.of(context).push("/home");
                        },
                      ),
                      Di.DHDT,
                      _MenuWithSubMenu(
                        title: "Profile",
                        subMenus: [
                          _MobileSubMenu(
                            title: "View profile",
                            onTap: () {
                              Routemaster.of(context).push("/profile");
                            },
                          ),
                          _MobileSubMenu(
                            title: "Edit profile",
                            onTap: () {
                              //sdflkadsfl
                            },
                          ),
                          _MobileSubMenu(
                            title: "Membership grade",
                            onTap: () {
                              //sdflkadsfl
                            },
                          ),
                          _MobileSubMenu(
                            title: "References",
                            onTap: () {
                              //sdflkadsfl
                            },
                          ),
                          _MobileSubMenu(
                            title: "Recommendations",
                            onTap: () {
                              //sdflkadsfl
                            },
                          ),
                          _MobileSubMenu(
                            title: "Network activity",
                            onTap: () {
                              //sdflkadsfl
                            },
                          ),
                        ],
                      ),
                      Di.DHDT,
                      _MobileMenu(
                        title: "News",
                        onTap: () {
                          Routemaster.of(context).push("/news");
                        },
                      ),
                      Di.DHDT,
                      _MenuWithSubMenu(
                        title: "Job",
                        subMenus: [
                          _MobileSubMenu(
                            title: "Find a job",
                            onTap: () {
                              Routemaster.of(context).push("/jobs");
                            },
                          ),
                          _MobileSubMenu(
                            title: "Post a job",
                            onTap: () {
                              Routemaster.of(context).push("/jobs");
                            },
                          ),
                        ],
                      ),
                      Di.DHDT,
                      _MobileMenu(
                        title: "Recruitments",
                        onTap: () {
                          Routemaster.of(context).push("/recruitments");
                        },
                      ),
                      Di.DHDT,
                      _MobileMenu(
                        title: "Help",
                        onTap: () {
                          Routemaster.of(context).push("/help");
                        },
                      ),
                      Di.DHDT,
                      if (appState.isLoggedIn == true)
                        Container(
                          padding: EdgeInsets.only(
                            left: Di.PSD,
                          ),
                          margin: EdgeInsets.only(right: Di.PSS),
                          height: 77,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              PersonAvatar(
                                avatarSize: 50,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    DbData.getUserProfileData.fullName ?? "",
                                    style: bodySmallRegular.copyWith(
                                        color: Cr.grey1),
                                  ),
                                  Text(
                                    DbData.getUserProfileData.fullName ?? "",
                                    style: bodySmallRegular.copyWith(
                                        color: Cr.grey1),
                                  ),
                                  Text(
                                    DbData.getUserProfileData.fullName ?? "",
                                    style: bodySmallRegular.copyWith(
                                        color: Cr.grey1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      Di.DHDT,
                      _MobileMenu(title: "Account settings"),
                      Di.DHDT,
                      _MobileMenu(title: "Privacy settings"),
                      Di.DHDT,
                      Di.SBHS,
                      TextWithBackground(
                        padding: 10,
                        paddingHorizantal: 80,
                        backgroundColor: Cr.darkBlue5,
                        text: "Log out",
                        textColor: Cr.whiteColor,
                        icon: Icon(
                          Icons.lock,
                          color: Cr.whiteColor,
                          size: 12,
                        ),
                      ),
                    ]

                    // _buildNavBarChildren(
                    //     inDrawer: true,
                    //     isLogin: appState.isLoggedIn),

                    ),
              ),
            ),
            Di.ESB,
          ],
        ),
      ),
    );
  }
}

class _MenuWithSubMenu extends StatelessWidget {
  const _MenuWithSubMenu({
    Key? key,
    required this.title,
    required this.subMenus,
  }) : super(key: key);

  final List<Widget> subMenus;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Cr.whiteColor,
      iconColor: Cr.whiteColor,
      title: Text(
        title,
        style: bodyLarge.copyWith(color: Cr.whiteColor),
      ),
      children: subMenus,
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // dense: true,
      title: Text(
        title,
        style: bodyLarge.copyWith(
          fontWeight: FontWeight.w600,
          color: Cr.whiteColor,
        ),
      ),
      onTap: onTap,
    );
  }
}

class _MobileSubMenu extends StatelessWidget {
  const _MobileSubMenu({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Di.PSOL,
      ),
      child: ListTile(
        // dense: true,
        title: Text(
          title,
          style: bodyLarge.copyWith(
            fontWeight: FontWeight.w600,
            color: Cr.darkGrey1,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
