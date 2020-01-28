import 'package:clock/ui/views/ticker_view.dart';
import 'package:flutter/material.dart';
import 'ui/views/clock_view.dart';
import 'locator.dart';
import 'package:clock/core/viewmodels/clock_model.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                color: Colors.yellow,
              ),
              // new Container(
              //   color: Color(0xFF2F2D2D),
              //   child: new Center(
              //     child: new Stack(
              //       children: <Widget>[
              //         circle
              //       ],),
              //   ),
              // ),
              ClockView(),
              TickerView(),
              new Container(
                color: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: SafeArea(
                      child: new TabBar(
              tabs: [
                Tab(
                  text: 'Alarm',
                ),
                Tab(
                  text: 'Clock',
                ),
                Tab(
                  text: 'Ticker',
                ),
                Tab(
                  text: 'Timer',
                ),
              ],
              labelStyle: TextStyle(fontSize: 20.0),
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xFF1CCE90),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFF2F2D2D),
        ),
      ),
    );
  }
}
