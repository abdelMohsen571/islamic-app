import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({Key? key}) : super(key: key);

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
                  "عدد الايات",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ))),
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                          color: Color.fromRGBO(183, 147, 95, 100),
                          width: 3,
                        ),
                        left: BorderSide(
                          color: Color.fromRGBO(183, 147, 95, 100),
                          width: 3,
                        ),
                        bottom: BorderSide(
                          color: Color.fromRGBO(183, 147, 95, 100),
                          width: 3,
                        ))),
                alignment: Alignment.center,
                child: Text(
                  "اسم السوره",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ))),
      ],
    );
  }
}
