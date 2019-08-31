import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'three_screen.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';



class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: double.infinity,
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
                bottomNavigationBar: BottomBar(),
                appBar: AppBar(
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(45),
                    child: Container(
                      color: Colors.transparent,
                      child: SafeArea(
                        child: Column(
                          children: <Widget>[
                            TabBar(
                                indicator: UnderlineTabIndicator(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 4.0),
                                    insets: EdgeInsets.fromLTRB(
                                        40.0, 10.0, 40.0, 0)),
                                indicatorWeight: 15,
                                indicatorSize: TabBarIndicatorSize.label,
                                labelColor: Color(0xff2d386b),
                                labelStyle: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 1.3,
                                    fontWeight: FontWeight.w500),
                                unselectedLabelColor: Colors.black26,
                                tabs: [
                                  Tab(
                                    text: "TIME",
                                    icon: Icon(Icons.access_time, size: 40),
                                  ),
                                  Tab(
                                    text: "DASH",
                                    icon: Icon(Icons.menu, size: 40),
                                  ),
                                  Tab(
                                    text: "PROFILE",
                                    icon: Icon(Icons.supervised_user_circle,
                                        size: 40),
                                  ),
                                ])
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                body: TabBarView(
                  children: <Widget>[
                    Center(
                      child: FirstTab(),
                    ),
                    Center(
                      child: SecondTab(),
                    ),
                    Center(
                      child: ThreeTab(),
                    )
                  ],
                ))));
  }
}

//class Barcode extends StatefulWidget {
//  @override
//  _BarcodeState createState() => _BarcodeState();
//}
//
//class _BarcodeState extends State<Barcode> {
//  String code="";
//  String getcode="";
//
//  Future scanbarcode()async{
//    getcode = await FlutterBarcodeScanner.scanBarcode("#009922", "CANCEL",true);
//    setState((){
//      code = getcode;
//    });
//  }
//  @override
//  Widget build(BuildContext context) {
//    return scanbarcode();
//  }
//}


class BottomBar extends StatefulWidget {

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  String code="";
  String getcode="";

  Future scanbarcode()async{
    getcode = await FlutterBarcodeScanner.scanBarcode("#009922", "CANCEL",true);
    setState((){
      code = getcode;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Text(
              "SCAN BARCODE",
              style: TextStyle(letterSpacing: 1.5),
            ),
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () {scanbarcode();
            },
          ),
          FloatingActionButton(
            child: Text(
              "+",
              style: TextStyle(
                  color: Color(0xff253165),
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            ),
            onPressed: () {},
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 5,
            highlightElevation: 3,
          )
        ],
      ),
    );
  }
}