import 'package:flutter/material.dart';

class DrawerHeaders extends StatelessWidget {
  const DrawerHeaders({
    Key key, this.username, this.status,
  }) : super(key: key);

  final String username, status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(maxRadius: 30),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              username,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              status,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60),
            )
          ],
        )
      ],
    );
  }
}
