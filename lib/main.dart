import 'package:flutter/material.dart';
import 'package:islamic_app/screens/home_screen.dart';
import 'package:islamic_app/screens/sora_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'islamic app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {SoraDetails.routeName: (context) => SoraDetails()},
    );
  }
}
