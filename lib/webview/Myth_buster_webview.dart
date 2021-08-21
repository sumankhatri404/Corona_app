import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';

class MythBusterWebView extends StatefulWidget {
  // const MythBusterWebView({ Key? key }) : super(key: key);

  @override
  _MythBusterWebViewState createState() => _MythBusterWebViewState();
}

class _MythBusterWebViewState extends State<MythBusterWebView> {
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: WebviewScaffold(
        url:
            "https://www.spotlightnepal.com/2020/03/12/coronavirus-disease-covid-19-advice-public-myth-busters/",
        hidden: true,
        withZoom: true,
        appBar: AppBar(
          title: Text(changeLanguage ? "अफवाहरु र तथ्यहरु" : "MYTHS BUSTERS"),
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
