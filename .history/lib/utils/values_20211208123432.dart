class Values {
  static String logoPath = 'assets/images/logo.png';
  static String loginBgPath = 'assets/images/login.jpg';

  static const double horizontalValue = 10.0;
  static const double verticalValue = 15.0;

  // API SETUP(S)
  static const Map<String, String> headers = {"Accept": "application/json"};
  static Uri getUserList = Uri.parse("https://villasearch.de/admin/public/api/get_user_list");
}
