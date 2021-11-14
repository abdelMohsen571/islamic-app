import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int CurrentScreenIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CurrentScreenIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              'Islami',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: CurrentScreenIndex,
            backgroundColor: Color.fromRGBO(183, 147, 95, 100),
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            iconSize: 36,
            selectedLabelStyle: TextStyle(fontSize: 20),
            onTap: (index) {
              setState(() {
                CurrentScreenIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icons/radio-ic.png')),
                  label: 'Redio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icons/sebha_ic.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/hadeeth-ic.png')),
                label: 'Hadeeth',
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/icons/moshaf_blue.png')),
                  label: 'Quran'),
            ]),
      ),
    );
  }
}
