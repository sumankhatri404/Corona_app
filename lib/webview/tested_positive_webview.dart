import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class TestedPostiveTips extends StatefulWidget {
  // const TestedPostiveTips({ Key? key }) : super(key: key);

  @override
  _TestedPostiveTipsState createState() => _TestedPostiveTipsState();
}

class _TestedPostiveTipsState extends State<TestedPostiveTips> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        url:
            "https://scopeblog.stanford.edu/2020/09/29/what-to-do-if-you-test-positive-for-covid-19/",
        hidden: true,
        withZoom: true,
        appBar: AppBar(
          title: Text("TIPS FOR POSITIVE PATIENTS"),
          centerTitle: true,
          backgroundColor: Color(0xFF473F97),
        ),
      ),
    );
  }
}
