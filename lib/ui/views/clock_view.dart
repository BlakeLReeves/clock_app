import 'package:clock/core/viewmodels/clock_model.dart';
import 'package:clock/ui/views/base_view.dart';
import 'package:flutter/material.dart';
//import 'dart:async';
// import 'package:provider_architecture/core/viewmodels/clock_model.dart';
// import 'package:provider_architecture/locator.dart';

// TODO: Figure out how to use global variables for colors

class ClockView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget smallCircle = new Container(
      width: 15.0,
      height: 15.0,
      decoration: new BoxDecoration(
        color: Color(0xFF1CCE90),
        shape: BoxShape.circle,
      ),
    );

    return BaseView<ClockModel>(
      onModelReady: (model) => model.updateTime(),
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
                        width: 100.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF1CCE90),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "${model.hour}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.0,
                            vertical: 5.0,
                          ),
                          child: smallCircle,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 0.0,
                            vertical: 5.0,
                          ),
                          child: smallCircle,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF1CCE90),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "${model.minute}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF1CCE90),
                          shape: BoxShape.rectangle,
                        ),
                        child: Center(
                          child: Text(
                            "${model.dayPeriod}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
