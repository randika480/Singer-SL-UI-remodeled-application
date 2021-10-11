import 'package:flutter/material.dart';
import 'package:singer_sl/components/Adithya/profile.dart';
import 'package:singer_sl/components/Deshani/home.dart';
import 'package:singer_sl/components/Randika/cart.dart';
import 'package:singer_sl/components/Shevon/loyaltypage.dart';
import 'package:singer_sl/screens/index/drawer.dart';
import 'package:singer_sl/screens/index/header.dart';

class LoyaltyProgram extends StatefulWidget {
  const LoyaltyProgram({Key key}) : super(key: key);

  @override
  _LoyaltyProgramState createState() => _LoyaltyProgramState();
}

class _LoyaltyProgramState extends State<LoyaltyProgram> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  Widget _widgetOptions() {
    switch (_selectedIndex) {
      case 3:
        return Profile();

      case 2:
        return Cart();
      case 1:
        return Home();

      case 0:
        return LoyaltyPage();
      default:
        LoyaltyPage();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        scaffoldKey.currentState.openDrawer();
        // This is what I've tried
      } else {
        _selectedIndex = index;
      }
      /*  _selectedIndex = index; */
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [_widgetOptions(), Header()],
      ),
      drawer: drawer(scaffoldKey: scaffoldKey),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              color: Color(0xFF8B8B8B),
              offset: Offset(8, 8),
              spreadRadius: 8,
            )
          ],
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: BottomNavigationBar(
          mouseCursor: SystemMouseCursors.grab,
          elevation: 10,
          backgroundColor: Colors.white,

          /*       onTap: _onItemTapped,
    currentIndex: _currentSelected, */
          showUnselectedLabels: false,
          unselectedItemColor: Color(0xFF8F8F8F),
          selectedItemColor: Color(0xFFD50000),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text('Navigation',
                  style: (TextStyle(color: Color(0xFF8F8F8F)))),
              icon: Icon(
                Icons.dehaze_outlined,
                size: 30,
                color: Color(0xFF8F8F8F),
              ),
            ),
            BottomNavigationBarItem(
              title: Text('home'),
              icon: Icon(
                Icons.home,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Cart'),
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Profile'),
              icon: Icon(
                Icons.person,
                size: 30,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
