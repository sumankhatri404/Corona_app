import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:corona_app/widget/get_nepali_number.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class OxygenRefillContact extends StatefulWidget {
  const OxygenRefillContact({Key key}) : super(key: key);

  @override
  _OxygenRefillContactState createState() => _OxygenRefillContactState();
}

class _OxygenRefillContactState extends State<OxygenRefillContact> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title:
              Text(changeLanguage ? "अक्सिजन रिफिलिंग" : "Oxygen Refillling"),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    child: Text(
                      changeLanguage
                          ? "फ्री अक्सिजन रिफिलिंग\nबुटवल/भैरवा "
                          : "FREE OXYGEN REFILLING\nBUTWAL/BHAIRAHAWA",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        changeLanguage
                            ? "बुटवल/भैरहवामा कसैलाई अक्सिजन सिलिन्डर रिफिल गर्न समस्या परिरहेको छ भने हामी युथ फर गुड नेपालले फ्री मा नै अक्सिजन सिलिन्डर भरिदिदैक्षौ।\n\nनोट:सिलिन्डर हजुरहरुले नै लिएर आउनु पर्ने  छ ,हामी  अक्सिजन मात्र वितरण गर्ने छौ। "
                            : "If someone in Butwal / Bhairahawa is having problem to refill the oxygen cylinder, we Youth for Good Nepal are filling the oxygen cylinder for free.\n\nNote: The cylinders have to be brought by you, we will only distribute oxygen.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        changeLanguage ? "सम्पर्क नम्बर" : "Contact List",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              changeLanguage ? "धुर्ब पान्दे" : 'Dhurba Pande',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              changeLanguage
                                  ? getNepaliNumber(9857058452)
                                  : "9857058452",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            FlatButton.icon(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 5.0,
                              ),
                              onPressed: () {
                                customLaunch('tel:+9779857058452');
                              },
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              icon: const Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              label: Text(
                                changeLanguage
                                    ? "सम्पर्क गर्नुहोस्"
                                    : 'Call Now',
                                style: TextStyle(
                                    // fontSize: 16.0,
                                    // fontWeight: FontWeight.w600,
                                    ),
                              ),
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              changeLanguage ? "सायद पाठक " : 'sayed pathak',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              changeLanguage
                                  ? getNepaliNumber(9857042468)
                                  : "9857042468",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            FlatButton.icon(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 5.0,
                              ),
                              onPressed: () {
                                customLaunch('tel:+9779857042468');
                              },
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              icon: const Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              label: Text(
                                changeLanguage
                                    ? "सम्पर्क गर्नुहोस्"
                                    : 'Call Now',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              changeLanguage
                                  ? "युथ फर गुड\nनेपाल "
                                  : 'Youth for Good\nNepal ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              changeLanguage
                                  ? getNepaliNumber(9864767084)
                                  : "9864767084",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            FlatButton.icon(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 5.0,
                              ),
                              onPressed: () {
                                customLaunch('tel:+9779864767084');
                              },
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              icon: const Icon(
                                Icons.phone,
                                color: Colors.white,
                              ),
                              label: Text(
                                changeLanguage
                                    ? "सम्पर्क गर्नुहोस्"
                                    : 'Call Now',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                    changeLanguage
                        ? "नोट:आर्थिक अवस्था कमजोर भएकाहरुलाई विशेष प्राथमिकता दिइने छ।"
                        : "Note: Special priority will be given to those who are financially weak.",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
