import 'package:flutter/material.dart';

class Values {
  static String logoPath = 'assets/images/logo.png';
  static String loginBgPath = 'assets/images/login.jpg';

  static const double horizontalValue = 10.0;
  static const double verticalValue = 15.0;
  static const double appHeight = 65.0;

  static const EdgeInsets Values.drawerMargin =
      EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10);

  // API SETUP(S)
  static const Map<String, String> headers = {"Accept": "application/json"};
  static const Map<String, String> headersMultiPart = {
    "Accept": "application/json",
    "Content-Type": "multipart/form-data"
  };
}

Uri getUserList =
    Uri.parse("https://villasearch.de/admin/public/api/get-user-list");
Uri addNewUser =
    Uri.parse("https://villasearch.de/admin/public/api/add-new-user");
Uri editUser = Uri.parse("https://villasearch.de/admin/public/api/edit-user");
Uri delUser = Uri.parse("https://villasearch.de/admin/public/api/del-user/");
