import 'package:flutter/material.dart';
import 'package:scale_ui/components/details/detail_box.dart';
import 'package:scale_ui/config.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.blueGrey[300],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(icon: Icon(Icons.share), onPressed: () {})
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "images/pet-cat2.png",
                height: 350,
              ),
            ),
          ),
          DetailBox(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: greenPrimary,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: shadowList
                    ),
                    child: Icon(Icons.favorite_border),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: greenPrimary,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: shadowList
                      ),
                      child: Center(
                        child: Text(
                          "Adoption",
                          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

