import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/radio.png')),
          SizedBox(
            height: 20,
          ),
          Text(
            'Radio Holy Quran',
            style: TextStyle(
                color: Theme.of(context).colorScheme.secondaryVariant,
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'wait us untill study api !!! \n Thanks for completing this app',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 25,
            ),
          )
        ],
      ),
    );
  }
}
