import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/clickable_text.dart';
import 'package:bank_fvisng_admin/widgets/drawerChild.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text(Str.dashboardTxt),
            onTap: () =>
                {Navigator.pushReplacementNamed(context, '/dashboard')},
          ),
          ExpansionTile(
            expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
            leading: Icon(Icons.people),
            title: Text(UserSTR.usersTxt),
            children: [
              DrawerChild(
                title: UserSTR.allUsersTxt, 
                onNavigate: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/users');
                },
              ),
              DrawerChild(
                title: UserSTR.emailVerifiedTxt, 
                onNavigate: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/email-verified');
                },
              ),
              DrawerChild(
                title: UserSTR.smsVerifiedTxt, 
                onNavigate: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/sms-verified');
                },
              ),
              DrawerChild(
                title: UserSTR.emailUnverifiedTxt, 
                onNavigate: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/email-unverified');
                },
              ),
              DrawerChild(
                title: UserSTR.smsUnverifiedTxt, 
                onNavigate: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/sms-unverified');
                },
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.request_page),
            title: Text(Str.transferRequestTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.add),
          //   title: Text(DepositSTR.depositTxt),
          //   onTap: () => {
          //     // Navigator.pushNamed(context, '/bottom_nav')
          //   },
          // ),
          ExpansionTile(
            expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
            leading: Icon(Icons.people),
            title: Text(DepositSTR.),
            children: [
              DrawerChild(
                title: DepositSTR.depositRequestTxt, 
                onNavigate: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/users');
                },
              ),
              DrawerChild(
                title: UserSTR.emailVerifiedTxt, 
                onNavigate: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/email-verified');
                },
              ),
              DrawerChild(
                title: UserSTR.smsVerifiedTxt, 
                onNavigate: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, '/sms-verified');
                },
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.minimize),
            title: Text(WithdrawSTR.withdrawTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text(Str.allTransactionsTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text(LoanManagementSTR.loanManagementTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text(FixedDepositSTR.fixedDepositTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text(GiftCardSTR.giftCardTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text(SupportTicketSTR.supportTicketTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            height: 1,
            thickness: 1,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: Values.horizontalValue * 2,
                vertical: Values.verticalValue),
            child: Text(
              'System Settings',
              style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Styles.textColor.withOpacity(0.5)),
            ),
          ),
          // SYSTEM SETTINGS
          ListTile(
            leading: Icon(Icons.business),
            title: Text(Str.branchTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text(Str.otherBankTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.people_alt),
            title: Text(SystemUserSTR.systemUsersTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text(Str.currencyTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.card_membership),
            title: Text(TransactionSettingSTR.transactionSettingsTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text(WebsiteManagementSTR.websiteManagementTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(AdministrationSTR.administrationTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text(LanguageSTR.languageTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
        ],
      ),
    );
  }
}
