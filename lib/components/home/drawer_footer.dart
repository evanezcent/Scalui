import 'package:flutter/material.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.settings,
          color: Colors.white70,
          size: 30,
        ),
        SizedBox(width: 5),
        Text(
          "Setting",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w400,
            fontSize: 26
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 2,
          height: 20,
          color: Colors.white70,
        ),
        SizedBox(width: 20),
        Text(
          "Logout",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w400,
            fontSize: 26
          ),
        ),
        SizedBox(width: 5),
        Icon(
          Icons.file_upload,
          color: Colors.white70,
          size: 30,
        ),
      ],
    );
  }
}
