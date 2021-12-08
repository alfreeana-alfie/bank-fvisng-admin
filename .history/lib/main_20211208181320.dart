import 'package:bank_fvisng_admin/pages/auth/forgot_password.dart';
import 'package:bank_fvisng_admin/pages/auth/sign_in.dart';
import 'package:bank_fvisng_admin/pages/auth/sign_up.dart';
import 'package:bank_fvisng_admin/pages/dashboard.dart';
import 'package:bank_fvisng_admin/pages/users.dart';
import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  var status = prefs.getBool('isLoggedIn') ?? false;
  // status = true;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local Brands',
      routes: {
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/sign_up': (context) => const SignUpPage(),
        '/sign_in': (context) => const SignInPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/users': (context) => const UsersPage(),
        // '/services': (context) => const OurServicesPage(),
        // '/faq': (context) => const FaqPage(),
        // '/contact': (context) => const ContactUsPage(),
        // '/dashboard': (context) => DashboardPage(),
        // '/bottom_nav': (context) => const BottomNav(),
        // '/product_list': (context) => const ProductListPage(),
        // '/my_profile': (context) => const MyProfilePage(),
      },
      home: SplashScreenView(
        // navigateRoute: status == true ? BottomNav() : SignInPage(),
        navigateRoute: DashboardPage(),
        duration: 4000,
        imageSize: 200,
        imageSrc: Values.logoPath,
        text: Str.appNameTxt,
        backgroundColor: Styles.primaryColor,
        pageRouteTransition: PageRouteTransition.SlideTransition,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Styles.secondaryColor,
        errorColor: Styles.dangerColor,
        textTheme: TextTheme(
          bodyText1: GoogleFonts.nunito,
        ),
      ),
    ),
  );
}