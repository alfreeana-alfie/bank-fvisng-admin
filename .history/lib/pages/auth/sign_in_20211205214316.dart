import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
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
      appBar: NewGradientAppBar(
        elevation: 0.0,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Styles.primaryColor, Styles.primaryColor]),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Styles.primaryColor, Styles.primaryColor],
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              _buildForm(),
            ],
          ),
        ),
      ),
    );
  }

  _buildForm() {
    return Container(
      color: Styles.primaryColor,
      margin: const EdgeInsets.all(10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,s
          children: [
            // Logo
            // Title
            Header1(
              title: Str.loginToYourAccountTxt,
              textStyle: GoogleFonts.nunitoSans(
                fontSize: 14,
                color: Styles.textColor,
                fontWeight: FontWeight.w600,
              ),
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(5.0),
            ),
            TextFieldCustom(
              onSaved: (value) => email = value!,
              hintText: Str.emailTxt,
            ),
            // Email address
            // Password
            // Remember Me
            // Button Sign In
            // Button Sign Up
            // Forgot Password
          ],
        ),
      ),
    );
  }
}
