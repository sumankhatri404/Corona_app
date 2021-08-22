import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';

class MohpWiebview extends StatefulWidget {
  const MohpWiebview({Key key}) : super(key: key);

  @override
  _MohpWiebviewState createState() => _MohpWiebviewState();
}

class _MohpWiebviewState extends State<MohpWiebview> {
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: WebviewScaffold(
        url: "https://mohp.gov.np/home/",
        hidden: true,
        withZoom: true,
        withJavascript: true,
        appBar: AppBar(
          title: Text(
            changeLanguage
                ? "स्वास्थ्य तथा जनसंख्या मन्त्रालय"
                : "Ministry of Health and \nPopulation (MoHP)",
            style: TextStyle(fontSize: 14),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF473F97),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(
                onPressed: () {
                  lang.updateLanguage();
                },
                icon: Icon(Icons.language),
                color: Colors.white,
                iconSize: width * 0.08,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
