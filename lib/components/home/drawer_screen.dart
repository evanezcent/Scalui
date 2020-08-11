import 'package:flutter/material.dart';
import 'package:scale_ui/components/home/drawer_footer.dart';
import 'package:scale_ui/components/home/drawer_header.dart';
import 'package:scale_ui/config.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: greenPrimary,
      padding: EdgeInsets.fromLTRB(20,50,10,20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DrawerHeaders(username: "Pratama Yoga", status: "Active",),
          Column(
            children: drawerItem.map((item) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: Row(
               children: <Widget>[
                 Icon(
                   item['icon'],
                   color: Colors.white,
                   size: 28,
                 ),
                 SizedBox(width: 20),
                 Text(
                   item['title'],
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                     fontSize: 20
                   ),
                 )
               ], 
              ),
            )).toList(),
          ),
          DrawerFooter()
        ],
      ),
    );
  }
}
