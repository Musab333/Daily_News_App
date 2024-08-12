import 'package:flutter/material.dart';
import 'package:news/view/widgets/route_navigator.dart';

Widget iconButtonBackCustom(BuildContext context) {
  return IconButton(
    onPressed: () {
      RouteNavigator.navigateBack(context);
    },
    icon: const Icon(
      Icons.arrow_back_ios_new_outlined,
    ),
  );
}
