import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: [
            Icon(Icons.settings, size: 30, color: Colors.white,),
            Icon(Icons.favorite_outline, size: 30, color: Colors.white,),
            Icon(Icons.home_outlined, size: 30, color: Colors.white,),
            Icon(Icons.message_outlined, size: 30, color: Colors.white,),
            Icon(Icons.person_2_outlined, size: 30, color: Colors.white,),
          ],
          color: Color.fromARGB(255, 251, 131, 171),
          buttonBackgroundColor: Color.fromARGB(255, 251, 131, 171),
          backgroundColor: Colors.white12,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.white12,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(0);
                  },
                )
              ],
            ),
          ),
        ));
  }
}