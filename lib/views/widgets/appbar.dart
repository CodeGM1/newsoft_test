import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsoft_test/constants/colors.dart';

class WidgetAppBar extends StatefulWidget {
  WidgetAppBar({Key? key}) : super(key: key);

  @override
  _WidgetAppBarState createState() => _WidgetAppBarState();
}

class _WidgetAppBarState extends State<WidgetAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgBlueColor,

    );
  }
}
