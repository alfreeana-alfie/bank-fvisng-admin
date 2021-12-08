import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SideDrawer extends StatelessWidget {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            child: Center(
              child: Text(
                'Side menu',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          // ListView(
          //   children: [
          //     ListTile(
          //       leading: Icon(Icons.dashboard),
          //       title: Text(Str.dashboardTxt),
          //       onTap: () => {
          //         Navigator.pushNamed(context, '/dashboard')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.people),
          //       title: Text(UserSTR.usersTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.request_page),
          //       title: Text(Str.transferRequestTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.add),
          //       title: Text(DepositSTR.depositTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.minimize),
          //       title: Text(WithdrawSTR.withdrawTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.list_alt),
          //       title: Text(Str.allTransactionsTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.monetization_on),
          //       title: Text(LoanManagementSTR.loanManagementTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.money),
          //       title: Text(FixedDepositSTR.fixedDepositTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.card_giftcard),
          //       title: Text(GiftCardSTR.giftCardTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.support_agent),
          //       title: Text(SupportTicketSTR.supportTicketTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     // SYSTEM SETTINGS
          //     ListTile(
          //       leading: Icon(Icons.business),
          //       title: Text(Str.branchTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.business),
          //       title: Text(Str.otherBankTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.people_alt),
          //       title: Text(SystemUserSTR.systemUsersTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.money),
          //       title: Text(Str.currencyTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.card_membership),
          //       title: Text(TransactionSettingSTR.transactionSettingsTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.web),
          //       title: Text(WebsiteManagementSTR.websiteManagementTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.settings),
          //       title: Text(AdministrationSTR.administrationTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //     ListTile(
          //       leading: Icon(Icons.language),
          //       title: Text(LanguageSTR.languageTxt),
          //       onTap: () => {
          //         // Navigator.pushNamed(context, '/bottom_nav')
          //       },
          //     ),
          //   ],
          // ),
          ListView.builder(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
    return Container(
      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Entry ${entries[index]}')),
    );
  }
);
        ],
      ),
    );
  }
}