import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';

class FacebookWeb extends StatefulWidget {
  FacebookWeb({Key key}) : super(key: key);

  @override
  _FacebookWebState createState() => _FacebookWebState();
}

class _FacebookWebState extends State<FacebookWeb> {
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: WebviewScaffold(
        url: "https://www.facebook.com/mohpnep/",
        hidden: true,
        withZoom: true,
        withJavascript: true,
        appBar: AppBar(
          title: Text(changeLanguage ? "फेसबुक" : "Facebook"),
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
