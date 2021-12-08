import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/app_bar.dart';
import 'package:bank_fvisng_admin/widgets/header_1.dart';
import 'package:bank_fvisng_admin/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewUserPage extends StatefulWidget {
  const AddNewUserPage({Key? key}) : super(key: key);

  @override
  _AddNewUserPageState createState() => _AddNewUserPageState();
}

class _AddNewUserPageState extends State<AddNewUserPage> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Values.appHeight),
        child: MainAppBar(title: Str.addNewTxt),
      ),
      backgroundColor: Styles.backgroundColor,
      body: Container(
        color: Styles.backgroundColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              _buildForm(context),
            ],
          ),
        ),
      ),
    );
  }

  _buildContainer(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(minWidth: 100, maxWidth: 400),
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
            // Title
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Header1(
                title: UserSTR.createUserTxt.toUpperCase(),
                textStyle: Theme.of(context).textTheme.headline5!,
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(5.0),
              ),
            ),
            Divider(
              height: 1, 
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  _buildForm(BuildContext context){
    return // Email address
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Values.horizontalValue*2, vertical: Values.verticalValue),
              child: TextFieldCustom(
                onSaved: (value) => email = value!,
                hintText: Str.emailTxt,
              ),
            ),
            // Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Values.horizontalValue*2),
              child: TextFieldCustom(
                onSaved: (value) => password = value!,
                hintText: Str.passwordTxt,
              ),
            ),
            // Remember Me
            // Button Sign In
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(
                  horizontal: Values.horizontalValue * 2,
                  vertical: Values.verticalValue),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(Str.signInTxt),
                style: ElevatedButton.styleFrom(
                  primary: Styles.secondaryColor,
                  elevation: 0.0,
                ),
              ),
            ),
  }
}
