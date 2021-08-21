import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:corona_app/webview/climate_mohp.dart';
import 'package:corona_app/webview/covid19_webview.dart';
import 'package:corona_app/webview/facebook_webview.dart';
import 'package:corona_app/webview/health_emergency.dart';
import 'package:corona_app/webview/health_research.dart';
import 'package:corona_app/webview/health_service_webview.dart';
import 'package:corona_app/webview/mohp_webview.dart';
import 'package:corona_app/webview/twitter_webview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImportantLinks extends StatefulWidget {
  const ImportantLinks({Key key}) : super(key: key);

  @override
  _ImportantLinksState createState() => _ImportantLinksState();
}

class _ImportantLinksState extends State<ImportantLinks> {
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
          child: Column(
            children: [
              //facebook web view
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FacebookWeb()),
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
                              changeLanguage
                                  ? "स्वास्थ्य तथा जनसंख्या मन्त्रालय नेपाल"
                                  : "Ministry of Health and Population\nNepal",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "https://www.facebook.com/mohpnep/",
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
                    MaterialPageRoute(builder: (context) => TwitterWebView()),
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
                              changeLanguage
                                  ? "स्वास्थ्य तथा जनसंख्या मन्त्रालय नेपाल"
                                  : "Ministry of Health and Population\nNepal",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "https://www.twitter.com/mohpnep/",
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

              //corona info ministry website
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CovidWebView()),
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
                              changeLanguage
                                  ? "कोरोना जानकारी-स्वास्थ्य तथा जनसंख्या\nमन्त्रालय"
                                  : "Corona info-Ministry of Health and\nPopulation",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "https://covid19.mohp.gov.np/",
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

              //Ministry website

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MohpWiebview()),
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
                                changeLanguage
                                    ? "स्वास्थ्य तथा जनसंख्या मन्त्रालय"
                                    : "Ministry of Health and \nPopulation (MoHP)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "https://mohp.gov.np/home/",
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

              //Department of health

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
                                changeLanguage
                                    ? "स्वास्थ्य सेवा विभाग"
                                    : "Health Service Department",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "https://dohs.gov.np/",
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

              //Health Emergency Operation Center
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HealthEmergency()),
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
                                changeLanguage
                                    ? "स्वास्थ्य आपतकालीन परिचालन\nकेन्द्र"
                                    : "Health Emergency Operation\nCenter",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "https://heoc.mohp.gov.np/",
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

              //Nepal Health Research Council
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => HealthResearchwebview()),
              //     );
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 10, right: 30),
              //     child: Container(
              //       height: height * 0.12,
              //       color: Colors.transparent,
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         crossAxisAlignment: CrossAxisAlignment.stretch,
              //         children: [
              //           IconButton(
              //             onPressed: () {},
              //             icon: FaIcon(
              //               FontAwesomeIcons.globe,
              //               size: 40,
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.only(top: 30),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   changeLanguage
              //                       ? "नेपाल स्वास्थ्य अनुसन्धान परिषद"
              //                       : "Nepal Health Research Council",
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                   ),
              //                 ),
              //                 Text(
              //                   "http://nhrc.gov.np/",
              //                   style: TextStyle(
              //                       decoration: TextDecoration.underline,
              //                       color: Colors.blue),
              //                 )
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              Divider(),

              //Climate Change and Health, Ministry of Health and Population

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClimateMohp()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
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
                                changeLanguage
                                    ? "जलवायु परिवर्तन र स्वास्थ्य, स्वास्थ्य\nतथा जनसंख्या मन्त्रालय"
                                    : "Climate Change and Health, Ministry\nof Health and Population",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "https://climate.mohp.gov.np/",
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
            ],
          ),
        ),
      ),
    );
  }
}
