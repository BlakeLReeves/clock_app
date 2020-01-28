import 'package:clock/core/viewmodels/ticker_model.dart';
import 'package:clock/ui/views/base_view.dart';
import 'package:flutter/material.dart';
//import 'dart:async';
// import 'package:provider_architecture/core/viewmodels/clock_model.dart';
// import 'package:provider_architecture/locator.dart';

// TODO: Figure out how to use global variables for colors

class TickerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget smallCircle = new Container(
    //   width: 15.0,
    //   height: 15.0,
    //   decoration: new BoxDecoration(
    //     color: Color(0xFF1CCE90),
    //     shape: BoxShape.circle,
    //   ),
    // );

    return BaseView<TickerModel>(
      //onModelReady: (model) => model.updateTime(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Color(0xFF2F2D2D),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: 300.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF1CCE90),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(60.0)),
                        ),
                        child: Center(
                          child: Text(
                            '${model.stopTime}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // * Start, Stop, Resume, Reset, and Lap Buttons below
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // * Start Button
                    Padding(
                      padding: EdgeInsets.all(10.0),
                        child: RaisedButton(
                          onPressed: () {model.startStopwatch();},
                          color: Color(0xFF1CCE90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.white, width: 2.0)
                          ),
                          child: Text(
                            'Start',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ),
                    // * Stop Button
                    Padding(
                      padding: EdgeInsets.all(10.0),
                        child: RaisedButton(
                          onPressed: () {model.stopStopwatch();},
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.white, width: 2.0)
                          ),
                          child: Text(
                            'Stop',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ),
                    // * Reset Button
                    Padding(
                      padding: EdgeInsets.all(10.0),
                        child: RaisedButton(
                          onPressed: () {model.resetStopwatch();},
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.white, width: 2.0)
                          ),
                          child: Text(
                            'Reset',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ),
                  ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
