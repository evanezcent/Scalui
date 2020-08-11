import 'package:flutter/material.dart';
import 'package:scale_ui/config.dart';

class Submenu extends StatelessWidget {
  const Submenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(6),
                  margin: EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: shadowList,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    categories[index]['iconPath'],
                    height: 50,
                    width: 50,
                  ),
                ),
                Text(categories[index]['name'])
              ],
            ),
          );
        },
      ),
    );
  }
}