import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/widgets/hadeeth_screen.dart';
import 'package:islamic_app/widgets/quran_screen_widget/quran_screen.dart';
import 'package:islamic_app/widgets/radio_screen.dart';
import 'package:islamic_app/widgets/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  Function toggleTheme;

  HomeScreen(this.toggleTheme);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int CurrentScreenIndex;
  final List Screens = [
    RadioScreen(),
    SebhaScreen(),
    HadeethScreen(),
    QuranScreen()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CurrentScreenIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    bool isLight = Theme.of(context).brightness == Brightness.light;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/${isLight ? 'bg3' : 'dark_bg'}.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
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
          actions: [
            Switch.adaptive(
                value: isLight,
                onChanged: (value) {
                  setState(() {
                    widget.toggleTheme();
                  });
                })
          ],
        ),
        body: Screens[CurrentScreenIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: CurrentScreenIndex,
            backgroundColor: Color.fromRGBO(183, 147, 95, 100),
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blue,
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
              const BottomNavigationBarItem(
                  icon: const ImageIcon(
                      AssetImage('assets/icons/moshaf_blue.png')),
                  label: 'Quran'),
            ]),
      ),
    );
  }
}
