import 'package:flutter/material.dart';
import 'package:islamic_app/screens/hadeeth_details.dart';
import 'package:islamic_app/screens/home_screen.dart';
import 'package:islamic_app/screens/sora_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLight = true;

  void toggleTheme() {
    setState(() {
      isLight = !isLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: isLight ? ThemeMode.light : ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: 'islamic app',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(183, 147, 95, 1),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.white,
            secondary: Colors.black,
            secondaryVariant: Colors.black,
            brightness: Brightness.light),
      ),
      darkTheme: ThemeData(
        primaryColor: Color.fromRGBO(20, 26, 46, 1),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Color.fromRGBO(250, 204, 29, 1.0),
            secondaryVariant: Colors.white,
            primary: Color.fromRGBO(20, 26, 46, 1),
            brightness: Brightness.dark),
      ),
      home: HomeScreen(toggleTheme),
      routes: {
        SoraDetails.routeName: (context) => SoraDetails(),
        HadeethDetails.routeName: (context) => HadeethDetails()
      },
    );
  }
}
