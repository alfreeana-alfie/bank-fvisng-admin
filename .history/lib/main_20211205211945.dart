import 'package:bank_fvisng_admin/pages/auth/sign_in.dart';
import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:flutter/material.dart';
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
        // '/forgot': (context) => const ForgotPasswordPage(),
        // '/sign_up': (context) => const SignUpPage(),
        // '/home': (context) => const HomePage(),
        // '/about': (context) => const AboutUsPage(),
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
        navigateRoute: SignInPage(),
        duration: 4000,
        imageSize: 200,
        imageSrc: 'assets/images/logo.png',
        text: Str.,
        backgroundColor: Styles.primaryColor,
        pageRouteTransition: PageRouteTransition.SlideTransition,
      ),
    ),
  );
}