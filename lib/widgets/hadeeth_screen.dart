import 'package:flutter/material.dart';
import 'package:islamic_app/widgets/hadeeth_table_header.dart';

class HadeethScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/basmala_logo.png'),
            HadeethTableHeader(),
            ListView.builder(itemCount= ,itemBuilder: itemBuilder)
          ],
        ),
      ),
    );
  }
}
