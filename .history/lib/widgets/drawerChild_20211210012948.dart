import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/clickable_text.dart';
import 'package:flutter/material.dart';

class DrawerChild extends StatelessWidget {
  const DrawerChild({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClickableText(
                    text: UserSTR.allUsersTxt,
                    selectedTextColor: Styles.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    tapGestureRecognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/users');
                      },
                    margin: const EdgeInsets.symmetric(
                        horizontal: Values.horizontalValue, vertical: 5),
                    alignment: Alignment.centerLeft);
  }
}