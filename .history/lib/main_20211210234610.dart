import 'package:bank_fvisng_admin/pages/auth/forgot_password.dart';
import 'package:bank_fvisng_admin/pages/auth/sign_in.dart';
import 'package:bank_fvisng_admin/pages/auth/sign_up.dart';
import 'package:bank_fvisng_admin/pages/dashboard.dart';
import 'package:bank_fvisng_admin/pages/deposit/deposit_hist.dart';
import 'package:bank_fvisng_admin/pages/deposit/deposit_request.dart';
import 'package:bank_fvisng_admin/pages/deposit/make_deposit.dart';
import 'package:bank_fvisng_admin/pages/fixed_deposit/all_fdr.dart';
import 'package:bank_fvisng_admin/pages/fixed_deposit/fdr_package.dart';
import 'package:bank_fvisng_admin/pages/gift_cards/gift_cards.dart';
import 'package:bank_fvisng_admin/pages/gift_cards/used_gift_cards.dart';
import 'package:bank_fvisng_admin/pages/loan_managements/add_new_loan.dart';
import 'package:bank_fvisng_admin/pages/loan_managements/all_loans.dart';
import 'package:bank_fvisng_admin/pages/loan_managements/loan_cal.dart';
import 'package:bank_fvisng_admin/pages/loan_managements/loan_product.dart';
import 'package:bank_fvisng_admin/pages/support_tickets/active.dart';
import 'package:bank_fvisng_admin/pages/support_tickets/add_new_tickets.dart';
import 'package:bank_fvisng_admin/pages/support_tickets/closed.dart';
import 'package:bank_fvisng_admin/pages/support_tickets/pending.dart';
import 'package:bank_fvisng_admin/pages/system_users/access_control.dart';
import 'package:bank_fvisng_admin/pages/system_users/sys_user.dart';
import 'package:bank_fvisng_admin/pages/system_users/user_roles.dart';
import 'package:bank_fvisng_admin/pages/transactions_settings/deposit_gate.dart';
import 'package:bank_fvisng_admin/pages/transactions_settings/deposit_meth.dart';
import 'package:bank_fvisng_admin/pages/transfer_requests/view_t_req.dart';
import 'package:bank_fvisng_admin/pages/users/add_new_user.dart';
import 'package:bank_fvisng_admin/pages/users/users.dart';
import 'package:bank_fvisng_admin/pages/website_managements/faq.dart';
import 'package:bank_fvisng_admin/pages/website_managements/menu_management.dart';
import 'package:bank_fvisng_admin/pages/website_managements/pages.dart';
import 'package:bank_fvisng_admin/pages/website_managements/services.dart';
import 'package:bank_fvisng_admin/pages/website_managements/teams.dart';
import 'package:bank_fvisng_admin/pages/website_managements/testimonials.dart';
import 'package:bank_fvisng_admin/pages/website_managements/theme_opt.dart';
import 'package:bank_fvisng_admin/pages/withdraw/make_withdraw.dart';
import 'package:bank_fvisng_admin/pages/withdraw/withdraw_hist.dart';
import 'package:bank_fvisng_admin/pages/withdraw/withdraw_request.dart';
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
        '/transfer-req': (context) => const TransferRequestPage(),
        '/deposit-req': (context) => const DepositRequestPage(),
        '/make-deposit': (context) => const MakeDepositPage(),
        '/deposit-hist': (context) => const DepositHistoryPage(),
        '/withdraw-req': (context) => const WithdrawRequestPage(),
        '/make-withdraw': (context) => const MakeWithdrawPage(),
        '/withdraw-hist': (context) => const WithdrawHistoryPage(),
        '/loans': (context) => const LoanListPage(),
        '/loan-cal': (context) => const LoanCalculatorPage(),
        '/add-new-loan': (context) => const AddNewLoanPage(),
        '/loan-prod': (context) => const LoanProductListPage(),
        '/fdr': (context) => const FdrListPage(),
        '/fdr-package': (context) => const FdrPackagePage(),
        '/gift-cards': (context) => const GiftCardListPage(),
        '/used-gift-cards': (context) => const UsedGiftCardPage(),
        '/active-ticket': (context) => const ActiveTicketPage(),
        '/pending-ticket': (context) => const PendingTicketPage(),
        '/closed-ticket': (context) => const ClosedTicketPage(),
        '/add-new-ticket': (context) => const AddNewTicketPage(),
        '/sys-users': (context) => const SysUserListPage(),
        '/user-roles': (context) => const UserRolesPage(),
        '/access-control': (context) => const AccessControlPage(),
        '/trans-deposit-meth': (context) => const DepositMethodsPage(),
        '/trans-deposit-gate': (context) => const DepositGatewayPage(),
        '/trans-withdraw-meth': (context) => const WithdrawMethodsPage(),
        '/trans-fees': (context) => const TransactionFeePage(),
        '/faq': (context) => const FaqPage(),
        '/services': (context) => const ServicesPage(),
        '/pages': (context) => const CmsPage(),
        '/teams': (context) => const TeamsPage(),
        '/testimonials': (context) => const TestimonialsPage(),
        '/theme-opt': (context) => const ThemeOptPage(),
        '/menu-manage': (context) => const MenuManagementPage(),
        '/general-settings': (context) => const GeneralSettingsPage(),
        '/db-backup': (context) => const DatabaseBackupPage(),
        '/langs': (context) => const LanguagePage(),
        '/add-lang': (context) => const AddNewLangPage(),
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