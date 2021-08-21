import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Hotline extends StatefulWidget {
  const Hotline({Key key}) : super(key: key);

  @override
  _HotlineState createState() => _HotlineState();
}

class _HotlineState extends State<Hotline> {
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: height * 0.24,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // color: Colors.orangeAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Text(
                changeLanguage
                    ? "कोभिड-१९ हटलाइन नम्बर"
                    : "COVID-19 Hotline Number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                changeLanguage ? "११३३ (२४ घण्टा)" : "1133 (24 Hours)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                changeLanguage
                    ? "१११५ (०६:०० बिहान - १०:०० बेलुका)"
                    : "1115 (06:00 AM - 10:00 PM)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                changeLanguage
                    ? "९८५१-२५५-८३४ | ९८५१-२५५-८३७\n(०८:०० बिहान - ०८:०० बेलुका)"
                    : "9851-255-834 | 9851-255-837\n(08:00 AM - 08:00 PM)",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
