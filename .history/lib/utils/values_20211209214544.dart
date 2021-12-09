class Values {
  static String logoPath = 'assets/images/logo.png';
  static String loginBgPath = 'assets/images/login.jpg';

  static const double horizontalValue = 10.0;
  static const double verticalValue = 15.0;
  static const double appHeight = 65.0;

  // API SETUP(S)
  static const Map<String, String> headers = {"Accept": "application/json"};
  static const Map<String, String> headersMultiPart = {"Content-Type": "multipart/form"};
}

Uri getUserList =
    Uri.parse("https://villasearch.de/admin/public/api/get-user-list");
Uri addNewUser =
    Uri.parse("https://villasearch.de/admin/public/api/add-new-user");
Uri editUser =
    Uri.parse("https://villasearch.de/admin/public/api/edit-user");
Uri delUser =
    Uri.parse("https://villasearch.de/admin/public/api/del-user/");

