import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';

class HealthServiceDepartment extends StatefulWidget {
  const HealthServiceDepartment({Key key}) : super(key: key);

  @override
  _HealthServiceDepartmentState createState() =>
      _HealthServiceDepartmentState();
}

class _HealthServiceDepartmentState extends State<HealthServiceDepartment> {
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: WebviewScaffold(
        url: "https://dohs.gov.np/",
        hidden: true,
        appBar: AppBar(
          title: Text(
            changeLanguage
                ? "स्वास्थ्य सेवा विभाग"
                : "Health Service Department",
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
