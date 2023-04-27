import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/color.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: iconColor, size: 40.0),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/images/username.svg",
            height: 30,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}