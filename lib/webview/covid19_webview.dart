import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';

class CovidWebView extends StatefulWidget {
  const CovidWebView({Key key}) : super(key: key);

  @override
  _CovidWebViewState createState() => _CovidWebViewState();
}

class _CovidWebViewState extends State<CovidWebView> {
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: WebviewScaffold(
        url: "https://covid19.mohp.gov.np/",
        hidden: true,
        appBar: AppBar(
          title: Text(
            changeLanguage
                ? "कोरोना जानकारी-स्वास्थ्य तथा जनसंख्या\nमन्त्रालय"
                : "Corona info-Ministry of Health and\nPopulation",
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
