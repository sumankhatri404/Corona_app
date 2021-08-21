import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';

class TestedPostiveTips extends StatefulWidget {
  // const TestedPostiveTips({ Key? key }) : super(key: key);

  @override
  _TestedPostiveTipsState createState() => _TestedPostiveTipsState();
}

class _TestedPostiveTipsState extends State<TestedPostiveTips> {
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: WebviewScaffold(
        url:
            "https://scopeblog.stanford.edu/2020/09/29/what-to-do-if-you-test-positive-for-covid-19/",
        hidden: true,
        withZoom: true,
        appBar: AppBar(
          title: Text(
            changeLanguage
                ? "कोरोना पोष्टिभ को लागी टिप्स"
                : "TIPS FOR POSITIVE PATIENTS",
            style: TextStyle(fontSize: 16),
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
