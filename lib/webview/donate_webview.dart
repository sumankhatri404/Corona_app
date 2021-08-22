import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';

class DonateWebView extends StatefulWidget {
  // const DonateWebView({ Key? key }) : super(key: key);

  @override
  _DonateWebViewState createState() => _DonateWebViewState();
}

class _DonateWebViewState extends State<DonateWebView> {
  bool showspinner = false;
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: WebviewScaffold(
        url: "https://donate.covid19responsefund.org/",
        hidden: true,
        withZoom: true,
        withJavascript: true,
        appBar: AppBar(
          title: Text(changeLanguage ? "दान" : "DONATE"),
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
