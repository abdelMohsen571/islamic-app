import 'package:flutter/material.dart';
import 'package:islamic_app/models/QuranData.dart';
import 'package:islamic_app/screens/sora_details.dart';
import 'package:islamic_app/widgets/quran_screen_widget/quran_table_header.dart';

import 'sora_list_item.dart';

class QuranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Expanded(
              child: Image.asset('assets/images/quran_logo.png'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                TableHeader(),
                Expanded(
                  child: ListView.builder(
                      itemCount: QuranData.QuranNames.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                                SoraDetails.routeName,
                                arguments: index);
                          },
                          child: SoraListItem(QuranData.QuranNames[index],
                              QuranData.AyatNumbers[index]),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
