import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final IconData iconData;

  const MyAppBar({Key? key, required this.iconData, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        
        // IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/icon.svg'))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 41.0);
}
