import 'package:flutter/material.dart';
import 'package:scale_ui/config.dart';

class DetailBox extends StatelessWidget {
  const DetailBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: shadowList),
        child: Container(
          margin: EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sova",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(Icons.hourglass_empty)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Perssian cat",
                  ),
                  Text(
                    "9 months old",
                    style: TextStyle(
                      color: Colors.grey[500]
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.location_on),
                    Expanded(child: Text("Jalan Telekomunikasi No 1, Buah Batu, Bandung"))
                  ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
