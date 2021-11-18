import 'package:flutter/material.dart';

class HadeethTableHeader extends StatelessWidget {
  const HadeethTableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: Color.fromRGBO(183, 147, 95, 100),
                          width: 3,
                        ),
                        bottom: BorderSide(
                          color: Color.fromRGBO(183, 147, 95, 100),
                          width: 3,
                        ))),
                alignment: Alignment.center,
                child: Text(
                  "اسم الحديث",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ))),
      ],
    );
  }
}
