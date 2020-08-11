import 'package:flutter/material.dart';
import 'package:scale_ui/components/details/detail_screen.dart';
import 'package:scale_ui/config.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key key,
    this.img,
    this.name,
    this.type,
    this.age,
    this.distance,
    this.sex,
  }) : super(key: key);

  final String img, name, type, age, sex;
  final double distance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: Container(
        height: 220,
        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[300],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: shadowList),
                    margin: EdgeInsets.only(top: 30),
                  ),
                  Align(
                    child: Image.asset(img),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(top: 50, bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        sex == "male"
                            ? Icon(Icons.hourglass_empty)
                            : Icon(Icons.hourglass_full)
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(type)),
                  SizedBox(height: 5),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        age,
                        style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      )),
                  SizedBox(height: 8),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.location_on),
                        Text("Distance ${distance} km")
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
