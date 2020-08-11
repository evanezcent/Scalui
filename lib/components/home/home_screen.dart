import 'package:flutter/material.dart';
import 'package:scale_ui/components/home/home_card.dart';
import 'package:scale_ui/components/home/search_bar.dart';
import 'package:scale_ui/components/home/submenu.dart';
import 'package:scale_ui/config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.circular( isDrawerOpen ? 40 : 0 )
      ),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(height: 45),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    isDrawerOpen
                        ? IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            })
                        : IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              setState(() {
                                xOffset = size.width - 180;
                                yOffset = size.height - 630;
                                scaleFactor = 0.6;
                                isDrawerOpen = true;
                              });
                            }),
                    Column(
                      children: <Widget>[
                        Text('Location'),
                        Row(
                          children: <Widget>[
                            Icon(Icons.location_on, color: greenPrimary),
                            Text('Indonesia'),
                          ],
                        )
                      ],
                    ),
                    CircleAvatar()
                  ],
                ),
              ),
              SearchBar(),
              Submenu(),
              HomeCard(
                img: "images/pet-cat2.png",
                name: "Sova",
                type: "Abyssian cat",
                age: "1 years old",
                distance: 3.2,
                sex: 'male',
              ),
              HomeCard(
                  img: "images/pet-cat1.png",
                  name: "Sage",
                  type: "Abyssian cat",
                  age: "1.5 years old",
                  distance: 6.1,
                  sex: 'female'),
              HomeCard(
                  img: "images/pet-cat1.png",
                  name: "Ricis",
                  type: "Abyssian cat",
                  age: "1.5 years old",
                  distance: 2.0,
                  sex: 'female'),
              
            ],
          ),
        ),
      ),
    );
  }
}




