import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';

class LaboratoriesTestingCovid extends StatefulWidget {
  const LaboratoriesTestingCovid({Key key}) : super(key: key);

  @override
  _LaboratoriesTestingCovidState createState() =>
      _LaboratoriesTestingCovidState();
}

class _LaboratoriesTestingCovidState extends State<LaboratoriesTestingCovid> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    return SafeArea(
      child: WebviewScaffold(
        url:
            "https://nphl.gov.np/covid19/list-of-laboratories-testing-covid-19/",
        hidden: true,
        withZoom: true,
        appBar: AppBar(
          title: Text(
            changeLanguage
                ? "प्रयोगशालाहरु कोभिड-१९ को परीक्षण गर्दै"
                : "Laboratories testing COVID-19",
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
