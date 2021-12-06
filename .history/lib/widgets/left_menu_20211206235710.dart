import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            child: Center(
              child: Text(
                'Side menu FlutterCorner',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text(Str.dashboardTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text(UserSTR.usersTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.request_page),
            title: Text(Str.transferRequestTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text(DepositSTR.depositTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
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
          
        ],
      ),
    );
  }
}