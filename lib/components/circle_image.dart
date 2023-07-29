import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:movies_list/config/constants.dart';
import 'package:movies_list/helpers/hex_color.dart';

Widget getDefaultImageFromAsset({
  required BuildContext context,
}) {
  return CircleAvatar(
      radius: 20,
      backgroundColor: hexToColor('#D1DFC3'),
      child: Image.asset(
        'assets/img/Avatar.png',
        height: 32,
        width: 32,
        fit: BoxFit.cover,
      ));
}
