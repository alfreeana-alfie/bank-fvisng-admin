import 'package:bank_fvisng_admin/models/user.dart';
import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/utils/values.dart';
import 'package:bank_fvisng_admin/widgets/left_menu.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  late Map<String, dynamic> userMap; 
  late Map<String, dynamic> verifyMap; 
  List<User> userList = []; 

  Future getList() async {
    final response = await http.get(
      getUserList,
      headers: Values.headers,
    );

    if (response.statusCode == 200) {
      verifyMap = jsonDecode(response.body);

      var verifyData = Verify.fromJSON(verifyMap);

      if (verifyData.status == successText) {
        productMap = jsonDecode(response.body);
        for (var prodData in productMap['data']) {
          final products = Product.fromMap(prodData);

          setState(() {
            prodList.add(products);
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      body: const Center(
        child: Text('Users'),
      ),
      drawer: SideDrawer(),
      backgroundColor: Styles.primaryColor,
    );
  }
}
