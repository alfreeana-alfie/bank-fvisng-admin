import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/app_bar.dart';
import 'package:bank_fvisng_admin/widgets/header_1.dart';
import 'package:bank_fvisng_admin/widgets/text_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:http/http.dart' as http;
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
      profilePicture = '';

  String? emailVerified, smsVerified, status;

  void addNew(BuildContext context, name, email, password, countryCode, phone,
      branch, status, emailVerified, smsVerified, profilePicture) async {
    final response = await http.put(addNewUser, headers: Values.headers, body: {
      "name": name,
      "email": email,
      "password": password,
      "country_code": countryCode,
      "phone": phone,
      "branch": branch,
      "status": status,
      "email_verified": emailVerified,
      "sms_verified": smsVerified,
      "profile_picture": profilePicture,
      "user_type": 'customer',
      "role_id": '',
    });

    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(Str.addSuccessTxt)));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(Str.addFailedTxt)));
    }
  }

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
            textInputType: TextInputType.name,
            textInputAction: TextInputAction.next,
            onSaved: (value) => name = value!,
            hintText: Str.nameTxt,
          ),
        ),
        // Email address
        Padding(
          padding: const EdgeInsets.only(
              bottom: 10,
              left: Values.horizontalValue * 2,
              right: Values.horizontalValue * 2),
          child: TextFieldCustom(
            textInputType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onSaved: (value) => email = value!,
            hintText: Str.emailTxt,
          ),
        ),
        // Password
        Padding(
          padding: const EdgeInsets.only(
              bottom: 10,
              left: Values.horizontalValue * 2,
              right: Values.horizontalValue * 2),
          child: TextFieldCustom(
            textInputType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            onSaved: (value) => password = value!,
            hintText: Str.passwordTxt,
          ),
        ),
        // Country Code + Phone No
        Padding(
          padding: const EdgeInsets.only(
              left: Values.horizontalValue * 2,
              right: Values.horizontalValue * 2,
              bottom: 10),
          child: Row(
            children: [
              Expanded(
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
                    textStyle: GoogleFonts.nunitoSans(
                      color: Styles.textColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFieldCustom(
                  textInputType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  onSaved: (value) => phone = value!,
                  hintText: Str.phoneNumberTxt,
                ),
              ),
            ],
          ),
        ),
        // Branch
        Padding(
          padding: const EdgeInsets.only(
              bottom: 10,
              left: Values.horizontalValue * 2,
              right: Values.horizontalValue * 2),
          child: TextFieldCustom(
            textInputType: TextInputType.text,
            textInputAction: TextInputAction.next,
            onSaved: (value) => branch = value!,
            hintText: Str.branchTxt,
          ),
        ),
        // Status
        Padding(
          padding: const EdgeInsets.only(
              bottom: 10,
              left: Values.horizontalValue * 2,
              right: Values.horizontalValue * 2),
          // child: TextFieldCustom(
          //   textInputType: TextInputType.text,
          //   textInputAction: TextInputAction.next,
          //   onSaved: (value) => status = value!,
          //   hintText: Str.statusTxt,
          // ),
          child: Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: emailVerified == null
                    ? Text('SMS Verified')
                    : Text(
                        emailVerified!,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                isExpanded: true,
                iconSize: 30.0,
                style: Theme.of(context).textTheme.bodyText1,
                items: ['YES', 'NO'].map(
                  (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  setState(
                    () {
                      emailVerified = val as String?;
                    },
                  );
                },
              ),
            ),
          ),
        ),
        // Email Verified
        Padding(
          padding: const EdgeInsets.only(
              bottom: 10,
              left: Values.horizontalValue * 2,
              right: Values.horizontalValue * 2),
          // child: TextFieldCustom(
          //   textInputType: TextInputType.text,
          //   textInputAction: TextInputAction.next,
          //   onSaved: (value) => emailVerified = value!,
          //   hintText: UserSTR.emailVerifiedTxt,
          // ),
          child: Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: emailVerified == null
                    ? Text('SMS Verified')
                    : Text(
                        emailVerified!,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                isExpanded: true,
                iconSize: 30.0,
                style: Theme.of(context).textTheme.bodyText1,
                items: ['YES', 'NO'].map(
                  (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  setState(
                    () {
                      emailVerified = val as String?;
                    },
                  );
                },
              ),
            ),
          ),
        ),
        // SMS Verified
        Padding(
          padding: const EdgeInsets.only(
              bottom: 10,
              left: Values.horizontalValue * 2,
              right: Values.horizontalValue * 2),
          // child: TextFieldCustom(
          //   textInputType: TextInputType.text,
          //   textInputAction: TextInputAction.next,
          //   onSaved: (value) => smsVerified = value!,
          //   hintText: UserSTR.smsVerifiedTxt,
          // ),
          child: Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(7.0),
                  ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: smsVerified == null
                    ? Text('SMS Verified')
                    : Text(
                        smsVerified!,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                isExpanded: true,
                iconSize: 30.0,
                style: Theme.of(context).textTheme.bodyText1,
                items: ['YES', 'NO'].map(
                  (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  setState(
                    () {
                      smsVerified = val as String?;
                    },
                  );
                },
              ),
            ),
          ),
        ),
        // Profile Picture
        Padding(
          padding: const EdgeInsets.only(
              bottom: 10,
              left: Values.horizontalValue * 2,
              right: Values.horizontalValue * 2),
          child: TextFieldCustom(
            onSaved: (value) => profilePicture = value!,
            hintText: Str.profilePictureTxt,
          ),
        ),
        // Button Sign In
        Container(
          height: 50,
          margin: const EdgeInsets.symmetric(
              horizontal: Values.horizontalValue * 2,
              vertical: Values.verticalValue),
          child: ElevatedButton(
            onPressed: () {
              addNew(context, name, email, password, countryCode, phone, branch,
                  status, emailVerified, smsVerified, profilePicture);
            },
            child: Text(UserSTR.createUserTxt),
            style: ElevatedButton.styleFrom(
              primary: Styles.darkBlueColor,
              elevation: 0.0,
            ),
          ),
        ),
      ],
    );
  }
}
