import 'package:flutter/material.dart';

class SoraListItem extends StatelessWidget {
  final String SoraName, AyatNumbers;

  SoraListItem(this.SoraName, this.AyatNumbers);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  AyatNumbers,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ))),
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    color: Color.fromRGBO(183, 147, 95, 100),
                    width: 3,
                  ),
                )),
                alignment: Alignment.center,
                child: Text(
                  SoraName,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ))),
      ],
    );
    ;
  }
}
