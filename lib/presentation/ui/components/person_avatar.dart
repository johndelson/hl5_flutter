import 'package:flutter/material.dart';
import 'package:holedo/presentation/ui/components/submenus.dart';
import 'package:holedo/presentation/utill/dimensions.dart';

class PersonAvatar extends StatelessWidget {
  const PersonAvatar({
    Key? key,
    this.avatarSize,
  }) : super(key: key);

  final double? avatarSize;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: true,
      onHover: (_) => showProfileHoverSubmenu(context),
      child: Container(
        width: avatarSize ?? Di.WSETS - 22,
        height: avatarSize ?? Di.WSETS - 22,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/avatar.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}