import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({Key key}) : super(key: key);

  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBar(
            title: Text(changeLanguage ? "एपको बारेमा" : "About the app"),
            centerTitle: true,
            backgroundColor: Color(0xFF473F97),
            elevation: 0.0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('images/nep.jpg'),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    changeLanguage
                        ? " कोभइन्फो जानकारीमूलक मोबाइल  एप सुमन खत्री र केशव पाण्डे ले तयार गरेको हो। यस एपमार्फत महत्त्वपूर्ण जानकारी सूचना तथा कुनै महामारीको समयमा आपतकालीन तथ्या्क,सम्पर्क नम्बर र अन्य जानकारी सर्वसाधारणमा प्रसार गर्दछ । यो एप कोभिड-१९(कोरोना भाइरस) चलिरहेको स्थिति को बारेमा चाँडो भन्दा चाँडो सर्वसाधारणमा जानकारी प्रदान गर्न को लागी विभिन्न अनुसन्धान र फीडबैकहरु बाट विकसित गरीएको हो।   "
                        : '''CovInfo informative mobile application is an mobile app designed and developed by the developer (Suman Khatri and keshav pandey) .It aims to disseminate important notices,releases,covid-19 information,hotline numbers,and other important information.This app was developed by doing various research and feedbacks to provide the information related to covid-19 (corona virus) to the clients as soon as possible regarding  on going situation of the virus. ''',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
