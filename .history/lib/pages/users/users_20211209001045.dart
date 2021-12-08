import 'dart:convert';

import 'package:bank_fvisng_admin/models/user.dart';
import 'package:bank_fvisng_admin/models/verify.dart';
import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/card_1.dart';
import 'package:bank_fvisng_admin/widgets/left_menu.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  late Map<String, dynamic> userMap;
  late Map<String, dynamic> verifyMap;
  List<User> userList = [];

  Future getList() async {
    final response = await http.get(
      getUserList,
      headers: Values.headers,
    );

    if (response.statusCode == 200) {
      verifyMap = jsonDecode(response.body);

      var verifyData = Verify.fromJSON(verifyMap);

      if (verifyData.status == ApiSTR.successTxt) {
        userMap = jsonDecode(response.body);
        for (var userData in userMap['data']) {
          final users = User.fromMap(userData);

          setState(() {
            userList.add(users);
          });
          print(userList);
        }
      }
    }
  }

  @override
  void initState() {
    super.initState();

    getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        
      ),
      // appBar: AppBar(
      //   backgroundColor: Styles.secondaryColor,
      //   centerTitle: false,
      //   title: Text(
      //     UserSTR.allUsersTxt,
      //     style: GoogleFonts.roboto(),
      //   ),
      //   elevation: 0.5,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 8.0, bottom: 5.0),
      //       child: ElevatedButton(
      //           onPressed: () {
      //             Navigator.pushNamed(context, '/add-new-user');
      //           },
      //           child: SvgPicture.asset(
      //             'assets/icons/add.svg',
      //             width: 20,
      //             height: 20,
      //             color: Styles.primaryColor,
      //           ),
      //           style: ElevatedButton.styleFrom(
      //             elevation: 0.0,
      //             primary: Styles.transparentColor,
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(50)),
      //           )),
      //     ),
      //   ],
      // ),
      drawer: SideDrawer(),
      backgroundColor: Styles.backgroundColor,
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
              for (User user in userList) Card1(users: user),
            ],
          ),
        ),
      ),
    );
  }
}
