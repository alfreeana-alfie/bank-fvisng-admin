import 'package:bank_fvisng_admin/pages/auth/forgot_password.dart';
import 'package:bank_fvisng_admin/pages/auth/sign_in.dart';
import 'package:bank_fvisng_admin/pages/auth/sign_up.dart';
import 'package:bank_fvisng_admin/pages/dashboard.dart';
import 'package:bank_fvisng_admin/pages/users/add_new_user.dart';
import 'package:bank_fvisng_admin/pages/users/users.dart';
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
        '/email-verified': (context) => const UsersPage(),
        '/email-unverified': (context) => const UsersPage(),
        '/sms-verified': (context) => const UsersPage(),
        '/sms-unverified': (context) => const UsersPage(),
        '/add-new-user': (context) => const AddNewUserPage(),
        // WRONG ROUTES
        '/deposit-req': (context) => const DepositRequestPage(),
        '/make-deposit': (context) => const MakeDepositPage(),
        '/deposit-hist': (context) => const DepositHistoryPage(),
        '/withdraw-req': (context) => const WithdrawRequestPage(),
        '/make-withdraw': (context) => const MakeWithdrawPage(),
        '/withdraw-hist': (context) => const WithdrawHistoryPage(),
        '/loans': (context) => const AllLoansPage(),
        '/loan-cal': (context) => const LoanCalculatorPage(),
        '/add-new-loan': (context) => const AddNewLoanPage(),
        '/loan-prod': (context) => const LoanProductPage(),
        '/fdr': (context) => const AllFdrPage(),
        '/fdr-package': (context) => const FdrPackagePage(),
        '/gift-cards': (context) => const GiftCardPage(),
        '/used-gift-cards': (context) => const UsedGiftCardPage(),
        '/active-ticket': (context) => const ActiveTicketPage(),
        '/pending-ticket': (context) => const PendingTicketPage(),
        '/closed-ticket': (context) => const ClosedTicketPage(),
        '/add-new-ticket': (context) => const AddNewTicketPage(),
        '/sys-users': (context) => const System(),
        '/user-roles': (context) => const AddNewUserPage(),
        '/access-control': (context) => const AddNewUserPage(),
        '/trans-deposit-meth': (context) => const AddNewUserPage(),
        '/trans-deposit-gate': (context) => const AddNewUserPage(),
        '/trans-withdraw-meth': (context) => const AddNewUserPage(),
        '/trans-fees': (context) => const AddNewUserPage(),
        '/faq': (context) => const AddNewUserPage(),
        '/services': (context) => const AddNewUserPage(),
        '/pages': (context) => const AddNewUserPage(),
        '/teams': (context) => const AddNewUserPage(),
        '/testimonials': (context) => const AddNewUserPage(),
        '/theme-opt': (context) => const AddNewUserPage(),
        '/menu-manage': (context) => const AddNewUserPage(),
        '/general-settings': (context) => const AddNewUserPage(),
        '/db-backup': (context) => const AddNewUserPage(),
        '/langs': (context) => const AddNewUserPage(),
        '/add-lang': (context) => const AddNewUserPage(),
      },
      home: SplashScreenView(
        // navigateRoute: status == true ? BottomNav() : SignInPage(),
        navigateRoute: UsersPage(),
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
          headline5: GoogleFonts.roboto(fontWeight: FontWeight.w400, letterSpacing:0.0, fontSize: 22, color: Styles.textColor),
          headline6: GoogleFonts.roboto(fontWeight: FontWeight.w500, letterSpacing:0.15, fontSize: 16, color: Styles.textColor),
          button: GoogleFonts.roboto(fontWeight: FontWeight.w500, letterSpacing:0.75, fontSize: 14, color: Styles.primaryColor),
          bodyText1: GoogleFonts.nunitoSans(fontWeight: FontWeight.w400, letterSpacing:0.5, fontSize: 15, color: Styles.textColor.withOpacity(0.7)),
          bodyText2: GoogleFonts.nunitoSans(fontWeight: FontWeight.w400, letterSpacing:0.25, fontSize: 15, color: Styles.textColor),
        ),
      ),
    ),
  );
}