import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MythBusterWebView extends StatefulWidget {
  // const MythBusterWebView({ Key? key }) : super(key: key);

  @override
  _MythBusterWebViewState createState() => _MythBusterWebViewState();
}

class _MythBusterWebViewState extends State<MythBusterWebView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        url:
            "https://www.spotlightnepal.com/2020/03/12/coronavirus-disease-covid-19-advice-public-myth-busters/",
        hidden: true,
        withZoom: true,
        appBar: AppBar(
          title: Text("MYTHS BUSTERS"),
          centerTitle: true,
          backgroundColor: Color(0xFF473F97),
        ),
      ),
    );
  }
}
