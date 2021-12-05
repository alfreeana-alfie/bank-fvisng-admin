import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/clickable_text.dart';
import 'package:bank_fvisng_admin/widgets/header_1.dart';
import 'package:bank_fvisng_admin/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: NewGradientAppBar(
      //   elevation: 0.0,
      //   gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.topRight,
      //       colors: [Styles.primaryColor, Styles.primaryColor]),
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Values.loginBgPath),
            fit: BoxFit.cover,
          ),
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.topRight,
          //   colors: [Styles.primaryColor, Styles.primaryColor],
          // ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _buildForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildForm() {
    return Container(
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(15),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Logo
            // Title
            Header1(
              title: Str.loginToYourAccountTxt,
              textStyle: GoogleFonts.nunitoSans(
                fontSize: 24,
                color: Styles.darkBlueColor,
                fontWeight: FontWeight.w600,
              ),
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(5.0),
            ),
            // Email address
            TextFieldCustom(
              onSaved: (value) => email = value!,
              hintText: Str.emailTxt,
            ),
            // Password
            TextFieldCustom(
              onSaved: (value) => password = value!,
              hintText: Str.passwordTxt,
            ),
            // Remember Me
            // Button Sign In
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: Values.horizontalValue,
                  vertical: Values.verticalValue),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(Str.signInTxt),
              ),
            ),
            // Button Sign Up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Str.signUpTxt,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 14,
                    color: Styles.darkBlueColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ClickableText(
                  text: Str.signUpHereTxt,
                  selectedTextColor: ,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  tapGestureRecognizer: tapGestureRecognizer,
                  margin: margin,
                  alignment: alignment,
                ),
              ],
            ),
            // Forgot Password
          ],
        ),
      ),
    );
  }
}
