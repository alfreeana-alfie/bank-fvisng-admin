import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/clickable_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DrawerChild extends StatelessWidget {
  const DrawerChild({required this.title, required this.onNavigate});

  final String title;
  final TapGestureRecognizer onNavigate;
  @override
  Widget build(BuildContext context) {
    return ClickableText(
        text: title,
        selectedTextColor: Styles.textColor.w,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        tapGestureRecognizer: onNavigate,
        margin: const EdgeInsets.symmetric(
            horizontal: Values.horizontalValue, vertical: 5),
        alignment: Alignment.centerLeft);
  }
}
