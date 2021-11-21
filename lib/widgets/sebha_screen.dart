import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  List<String> TasbeehList = [
    ' سبحان الله و بحمده',
    'استغفر الله ',
    '  اللهم صل على محمد'
  ];
  int current_index = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              InkWell(
                onTap: OnTasbeehClick,
                child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .1),
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset('assets/images/sebha.png'))),
              ),
              Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * .05),
                  child: Image.asset('assets/images/sebhaHead.png')),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      'Tasbeeh Num',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    )),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: Reset,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text(
                      '$counter',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: OnTasbeehClick,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: Text(
                      TasbeehList[current_index],
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void Reset() {
    setState(() {
      counter = 0;
    });
  }

  void OnTasbeehClick() {
    setState(() {
      angle += 30;
      counter++;
      if (counter % 10 == 0) {
        if (current_index == 2) {
          current_index = 0;
        }
        current_index++;
      }
    });
  }
}
