import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class DonateWebView extends StatefulWidget {
  // const DonateWebView({ Key? key }) : super(key: key);

  @override
  _DonateWebViewState createState() => _DonateWebViewState();
}

class _DonateWebViewState extends State<DonateWebView> {
  bool showspinner = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        url: "https://donate.covid19responsefund.org/",
        hidden: true,
        appBar: AppBar(
          title: Text("DONATE"),
          centerTitle: true,
          backgroundColor: Color(0xFF473F97),
        ),
      ),
    );
  }
}
