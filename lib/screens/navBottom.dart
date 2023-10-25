import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/project.dart';

import 'about.dart';
import 'certificate.dart';
import 'countact.dart';
import 'home.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  var pages = [
    HomeScreen(),
    ProjectScreen(),
    CertificateScreen(),
    ContactScreen(),
    // AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Image.asset('assets/images/home.png', height: 30, color: Colors.white,),
            Image.asset('assets/images/project.png', height: 30, color: Colors.white,),
            Image.asset('assets/images/certificate.png', height: 30, color: Colors.white,),
            Image.asset('assets/images/phone.png', height: 30, color: Colors.white,),
            // Image.asset('assets/images/about.png', height: 30, color: Colors.white,),
          ],
          color: Theme.of(context).primaryColor,
          buttonBackgroundColor: Theme.of(context).primaryColor,
          backgroundColor:Color(0xFF421F6D),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 500),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: pages[_page]
    );
  }
}