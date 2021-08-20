import 'package:flutter/material.dart';
import 'package:iti_project/screens/account.dart';
import 'package:iti_project/screens/cart.dart';
import 'package:iti_project/screens/discover.dart';
import 'package:iti_project/screens/toGo.dart';
import 'package:iti_project/screens/wallet.dart';

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({Key? key}) : super(key: key);

  @override
  _BottomnaviState createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Bottomnavi> {
  List _screens = [Discover(), ToGo(), Wallet(), Cart(), Account()];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red[800],
          unselectedItemColor: Colors.grey[400],
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
                label: 'discover',
                icon: Icon(Icons.radio_button_checked_outlined)),
            BottomNavigationBarItem(label: 'to go', icon: Icon(Icons.hiking)),
            BottomNavigationBarItem(
                label: 'wallet', icon: Icon(Icons.wallet_giftcard_sharp)),
            BottomNavigationBarItem(
                label: 'cart', icon: Icon(Icons.local_grocery_store_outlined)),
            BottomNavigationBarItem(
                label: 'account', icon: Icon(Icons.account_circle)),
          ]),
    );
  }
}
