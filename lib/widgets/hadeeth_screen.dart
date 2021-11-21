import 'package:flutter/material.dart';
import 'package:islamic_app/models/hadeeth_data.dart';
import 'package:islamic_app/screens/hadeeth_details.dart';
import 'package:islamic_app/widgets/hadeeth_table_header.dart';

class HadeethScreen extends StatefulWidget {
  @override
  State<HadeethScreen> createState() => _HadeethScreenState();
}

class _HadeethScreenState extends State<HadeethScreen> {
  List<Map>? ahadeeth;
  void loadtitles() async {
    ahadeeth = await HadeethData.getahadeeth();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (ahadeeth == null) {
      loadtitles();
    }
    return Container(
      child: Column(
        children: [
          Center(
              child: Expanded(
                  child: Image.asset('assets/images/basmala_logo.png'))),
          HadeethTableHeader(),
          Expanded(
            child: (ahadeeth == null)
                ? CircularProgressIndicator.adaptive()
                : InkWell(
                    child: ListView.builder(
                        itemCount: ahadeeth!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  HadeethDetails.routeName,
                                  arguments: {
                                    'titles': ahadeeth![index]['titles'],
                                    'text': ahadeeth![index]['text']
                                  });
                            },
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                ahadeeth![index]['titles'],
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                          );
                        }),
                  ),
          )
        ],
      ),
    );
  }
}
