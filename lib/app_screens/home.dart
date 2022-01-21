import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 // ROWS AND COLUMNS
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 15.0, top: 40.0, right: 15.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Spice Jet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "From Lagos to Australia via New York",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Arik airway",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                    Expanded(
                        child: Text(
                      "From Lagos to Abuja via commercial bus",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    )),
                  ],
                ),
                LaptopImageAsset(),
                FlightBookButton(),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          "Programmer",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 34.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        )),
                    Expanded(
                        child: Text(
                          "Journey to becoming a badass programmer",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        )),
                  ],
                )
              ],
            )));
  }
}

class LaptopImageAsset extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/laptop.png');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0,);
    return Container(child: image,);
  }
}

class FlightBookButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
              "Book your flight",
              style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700
              ),
          ),
          elevation: 6.0,
          onPressed: () {
            //Action
            bookFlight(context);
          }),
    );
  }
  void bookFlight(BuildContext context) {

    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasant flight!"),
    );
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
    );
  }
}
