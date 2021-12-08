import 'package:bank_fvisng_admin/utils/styles.dart';
import 'package:bank_fvisng_admin/widgets/left_menu.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: _buildList(),
      drawer: SideDrawer(),
      backgroundColor: Styles.primaryColor,
    );
  }

  _buildList(){
    return ExpandableNotifier(  // <-- Provides ExpandableController to its children
      child: Column(
        children: [
          Expandable(           // <-- Driven by ExpandableController from ExpandableNotifier
            collapsed: ExpandableButton(  // <-- Expands when tapped on the cover photo
              child: buildCoverPhoto(),
            ),
            expanded: Column(  
              children: [
                buildAllPhotos(),
                ExpandableButton(       // <-- Collapses when tapped on
                  child: Text("Back"),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
