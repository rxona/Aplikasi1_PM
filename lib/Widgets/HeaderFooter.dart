import 'package:app_pemrograman_mobile/PageList/Account_Page/Account.dart';
// import 'package:app_pemrograman_mobile/PageList/Discovery_Page/Discovery.dart';
// import 'package:app_pemrograman_mobile/PageList/Search_Page/Search.dart';
import 'package:app_pemrograman_mobile/PageList/Transaction_Page/Transaction.dart';
import 'package:app_pemrograman_mobile/homepage.dart';
import 'package:flutter/material.dart';

class HF extends StatefulWidget {
  @override
  State<HF> createState() => _HFState();
}

class _HFState extends State<HF> {
  int _selectedIndex = 1;

  List<Widget> _widgetOptions = <Widget>[
    TransactionPage(),
    HomePage(),
    // DiscoveryPage(),
    // SearchPage(),
    AccountPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Header
    Widget headerApp = SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        alignment: Alignment.center,
        height: 100,
        decoration: BoxDecoration(color: Color.fromARGB(255, 38, 32, 104)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: const [
              Text(
                "Swalayan E-SHOP",
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 243, 225, 239),
                ),
              ),
            ],
          ),
          // Row(
          //   children: [
          //     Container(
          //       child: IconButton(
          //         icon: Image.asset('assets/Iconly/Setting.png'),
          //         onPressed: () {},
          //       ),
          //     ),
          //   ],
          // )
        ]),
      ),
    );

    // End of Header

    return Scaffold(
      body: Column(
        children: [
          headerApp, // Add headerApp as a child of Scaffold
          Expanded(
            child: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF000000).withOpacity(0.0),
              Color(0xFFC0C0C0),
            ],
          ),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          onPressed: () => setState(() {
            _selectedIndex = 1;
          }),
          tooltip: 'Home',
          child: Icon(Icons.home),
          foregroundColor: Color.fromARGB(255, 243, 225, 239),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color.fromARGB(255, 38, 32, 104),
          selectedItemColor: Color.fromARGB(255, 161, 71, 149),
          unselectedItemColor: Color.fromARGB(255, 243, 225, 239),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.list),
            //   label: 'List',
            // ),
            BottomNavigationBarItem(
              icon: Icon(null),
              label: 'Home',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.shopping_cart),
            //   label: 'Cart',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ]),
    );
  }
}
