import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/app_bar.dart';
import 'package:bank_fvisng_admin/widgets/header_1.dart';
import 'package:bank_fvisng_admin/widgets/text_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
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

  String name = '',
      email = '',
      password = '',
      countryCode = '',
      phone = '',
      branch = '',
      status = '',
      emailVerified = '',
      smsVerified = '',
      profilePicture = '';

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
              _buildContainer(context),
            ],
          ),
        ),
      ),
    );
  }

  // Form Container
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
            _buildForm(context),
          ],
        ),
      ),
    );
  }

  // Form
  _buildForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // NAME
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2,
              vertical: Values.verticalValue),
          child: TextFieldCustom(
            onSaved: (value) => name = value!,
            hintText: Str.nameTxt,
          ),
        ),
        // Email address
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2,
              vertical: Values.verticalValue),
          child: TextFieldCustom(
            onSaved: (value) => email = value!,
            hintText: Str.emailTxt,
          ),
        ),
        // Password
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2),
          child: TextFieldCustom(
            onSaved: (value) => password = value!,
            hintText: Str.passwordTxt,
          ),
        ),
        // Country Code
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.05),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: CountryCodePicker(
              onChanged: (value) {
                setState(() {
                  countryCode = value.toString();
                });
              },
              onInit: (value) {
                countryCode = value.toString();
              },
              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
              initialSelection: '+60',
              // favorite: ['+60','MS'],
              // optional. Shows only country name and flag
              showCountryOnly: false,
              // optional. Shows only country name and flag when popup is closed.
              showOnlyCountryWhenClosed: false,
              // optional. aligns the flag and the Text left
              alignLeft: false,
              padding: EdgeInsets.all(12),
              dialogSize: Size(350, 450),
            ),
          ),
        ),
        // Phone
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2),
          child: TextFieldCustom(
            onSaved: (value) => phone = value!,
            hintText: Str.phoneNumberTxt,
          ),
        ),
        // Branch
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2),
          child: TextFieldCustom(
            onSaved: (value) => branch = value!,
            hintText: Str.branchTxt,
          ),
        ),
        // Status
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2),
          child: TextFieldCustom(
            onSaved: (value) => status = value!,
            hintText: Str.statusTxt,
          ),
        ),
        // Email Verified
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2),
          child: TextFieldCustom(
            onSaved: (value) => emailVerified = value!,
            hintText: UserSTR.emailVerifiedTxt,
          ),
        ),
        // SMS Verified
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2),
          child: TextFieldCustom(
            onSaved: (value) => smsVerified = value!,
            hintText: Str.passwordTxt,
          ),
        ),

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
      ],
    );
  }
}
