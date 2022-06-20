import 'package:flutter/material.dart';
import 'package:holedo/presentation/ui/pages/components/connection_component.dart';
import 'package:holedo/presentation/ui/pages/components/profile_completion_component.dart';
import 'package:holedo/presentation/ui/pages/components/rights_component.dart';
import 'package:holedo/presentation/ui/pages/sections/page_overview/page_overview_columns/page_overview_third_columns.dart';
import 'package:holedo/presentation/utill/color_resources.dart';
import 'package:holedo/presentation/utill/dimensions.dart';
import 'package:holedo/presentation/utill/styles.dart';

class ArticlesSection extends StatelessWidget {
  const ArticlesSection({
    Key? key,
    this.showIsMemberOnly = true,
  }) : super(key: key);

  final bool showIsMemberOnly;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Di.getScreenSize(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Di.SBHOTL,
          SizedBox(
            width: 360,
            // height: 220,
            child: Column(
              children: [
                ProfileArticleWidget(),
                ProfileArticleWidget(),
                ProfileArticleWidget(),
                ProfileArticleWidget(),
              ],
            ),
          ),
          Di.SBWEL,
          SizedBox(
            width: 360,
            // height: 220,
            child: Column(
              children: [
                ProfileArticleWidget(),
                ProfileArticleWidget(),
                ProfileArticleWidget(),
                ProfileArticleWidget(),
              ],
            ),
          ),
          Di.SBWEL,
          SizedBox(
            width: 360,
            child: Column(
              children: [
                ProfileCompletionComponent(),
                Di.SBHEL,
                ProfileArticleWidget(
                  showIsMemberOnly: true,
                ),
                ProfileArticleWidget(),
                Di.SBHEL,
                ConnectionsComponent(),
                ProfileAdsComponent(),
                RightsComponent(),
              ],
            ),
          ),
          Di.SBWEL,
        ],
      ),
    );
  }
}

class ProfileArticleWidget extends StatelessWidget {
  const ProfileArticleWidget({
    Key? key,
    this.showIsMemberOnly = false,
  }) : super(key: key);

  final bool showIsMemberOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: showIsMemberOnly ? 332 : 305,
      color: Cr.whiteColor,
      margin: EdgeInsets.symmetric(vertical: Di.PSS),
      child: Padding(
        padding: const EdgeInsets.all(Di.PSD),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 175,
              child: Image.asset(
                "assets/images/public.png",
                fit: BoxFit.cover,
              ),
            ),
            Di.SBHD,
            Text(
              "Baha Mar Files Chapter 11 Plan of Reorganization",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: h3Bold,
            ),
            Di.SBHES,
            Text(
              "By: Pam Carrol   •   26 August 2015   •   10:40",
              style: bodySmallSemibold.copyWith(
                color: Cr.darkGrey1,
              ),
            ),
            Di.SBHS,
            showIsMemberOnly
                ? SizedBox(
                    width: 90,
                    height: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Cr.red3,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Center(
                          child: Text(
                            "MEMBERS ONLY",
                            textAlign: TextAlign.center,
                            style: bodyExtraSmall.copyWith(
                              color: Cr.red1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Di.ESB,
          ],
        ),
      ),
    );
  }
}
