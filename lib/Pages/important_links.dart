import 'dart:convert';

import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:corona_app/webview/covid19_webview.dart';
import 'package:corona_app/webview/facebook_webview.dart';
import 'package:corona_app/webview/health_emergency.dart';
import 'package:corona_app/webview/health_service_webview.dart';
import 'package:corona_app/webview/mohp_webview.dart';
import 'package:corona_app/webview/twitter_webview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class ImportantLinks extends StatefulWidget {
  const ImportantLinks({Key key}) : super(key: key);

  @override
  _ImportantLinksState createState() => _ImportantLinksState();
}

class _ImportantLinksState extends State<ImportantLinks> {
  var data;
  bool loading = true;
  Future importantLinks() async {
    var url =
        Uri.parse("http://coronaapinepal.000webhostapp.com/media_api.php");
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );
    var jsondata = json.decode(response.body);
    print(jsondata);
    setState(() {
      data = jsondata;
      loading = false;
      // print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    importantLinks();
    // getWorldLatestupdate();
  }

  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title:
            Text(changeLanguage ? "महत्त्वपूर्ण लिंकहरु" : "Important links"),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: loading == true
              ? Padding(
                  padding: EdgeInsets.only(top: height * 0.1),
                  child: Center(
                      child: CircularProgressIndicator(
                    strokeWidth: 6.0,
                    // backgroundColor: Colors.red,
                    color: Color(0xFF473F97),
                  )),
                )
              : Column(
                  children: [
                    //facebook web view
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FacebookWeb()),
                        );
                      },
                      child: Container(
                        height: height * 0.12,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.facebook,
                                size: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[4]['title'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    data[4]['link'],
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(),

                    //Twitter web view

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TwitterWebView()),
                        );
                      },
                      child: Container(
                        height: height * 0.12,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.twitter,
                                size: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[3]['title'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    data[3]['link'],
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(),

                    //corona info ministry website covid19.mohp.gov.np
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CovidWebView()),
                        );
                      },
                      child: Container(
                        height: height * 0.12,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: IconButton(
                                onPressed: () {},
                                icon: FaIcon(
                                  FontAwesomeIcons.globe,
                                  size: 40,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      data[5]['title'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      data[5]['link'],
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.blue),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(),

                    //ministry of health and population mohp.gov.np/home/
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MohpWiebview()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Container(
                          height: height * 0.12,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(
                                    FontAwesomeIcons.globe,
                                    size: 40,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        data[1]['title'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        data[1]['link'],
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.blue),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(),

                    //Department of health dohs.gov.np/

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HealthServiceDepartment()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 75, left: 5),
                        child: Container(
                          height: height * 0.12,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(
                                    FontAwesomeIcons.globe,
                                    size: 40,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        data[2]['title'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      data[2]['link'],
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.blue),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(),

                    //health emergency operation center heoc.mohp.gov.np

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HealthEmergency()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40, left: 5),
                        child: Container(
                          height: height * 0.12,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: FaIcon(
                                  FontAwesomeIcons.globe,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data[0]['title'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      data[0]['link'],
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.blue),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
