import 'package:bank_fvisng_admin/utils/strings.dart';
import 'package:flutter/material.dart';

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
            title: Text(UserSTR.usersTxt),
            onTap: () => {
              // Navigator.pushNamed(context, '/bottom_nav')
            },
          ),
        ],
      ),
    );
  }
}