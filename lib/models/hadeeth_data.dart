import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/services.dart';

class HadeethData {
  static Future<List<Map>> getahadeeth() async {
    List<String> ahadeeth;
    ahadeeth = (await rootBundle.loadString('assets/ahadeeth/ahadeth .txt'))
        .split('#');
    List<Map> ahadeethMap = [];
    for (int i = 0; i < ahadeeth.length; i++) {
      if (ahadeeth[i].length > 0) {
        String text = (ahadeeth[i].split('\n')..removeAt(0)).join(' ');
        ahadeethMap.add({
          'titles': 'الحديث رقم ${ArabicNumbers().convert(i + 1)}',
          'text': text,
        });
      }
    }
    return ahadeethMap;
  }
}
