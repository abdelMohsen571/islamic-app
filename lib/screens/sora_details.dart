import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/models/QuranData.dart';

class SoraDetails extends StatefulWidget {
  static const routeName = 'sora_details';

  @override
  State<SoraDetails> createState() => _SoraDetailsState();
}

class _SoraDetailsState extends State<SoraDetails> {
  late int index;

  String? sora;
  void loadSora(int index) async {
    sora = await QuranData.readSora(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool isLight = Theme.of(context).brightness == Brightness.light;

    index = ModalRoute.of(context)!.settings.arguments as int;
    if (sora == null) {
      loadSora(index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/${isLight ? 'bg3' : 'dark_bg'}.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: IconThemeData(
                color: Theme.of(context).colorScheme.secondaryVariant),
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Center(
              child: Text(
                'Islami',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondaryVariant,
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
                    colors: [
                  Theme.of(context).colorScheme.primary.withOpacity(0.7),
                  Theme.of(context).colorScheme.primary
                ])),
            child: Column(
              children: [
                Text(
                  QuranData.QuranNames[index],
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                Divider(
                  color: Color.fromRGBO(183, 147, 95, 100),
                  thickness: 2,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: (sora == null)
                        ? Center(child: CircularProgressIndicator())
                        : Text(
                            sora!,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 20,
                                height: 1.2,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
