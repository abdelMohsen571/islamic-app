import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadeethDetails extends StatelessWidget {
  static const routeName = 'HadeethDetails';

  @override
  Widget build(BuildContext context) {
    Map hadeeth = ModalRoute.of(context)!.settings.arguments as Map;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
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
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20)
                .add(EdgeInsets.only(bottom: 10)),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white.withOpacity(0.7), Colors.white])),
            child: Column(
              children: [
                Text(
                  hadeeth['titles'],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Color.fromRGBO(183, 147, 95, 100),
                  thickness: 2,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      hadeeth['text'],
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 20, height: 1.2),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}