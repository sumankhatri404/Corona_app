import 'dart:convert';
import 'package:corona_app/Pages/symptoms_list.dart';
import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:corona_app/widget/get_nepali_number.dart';
import 'package:corona_app/widget/hotline_number_widget.dart';
import 'package:corona_app/widget/navigation_Drawer_widget.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'symptoms.dart';
import 'infoPanel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data;
  bool loading = true;

  //For Nepal

  Future getLatestupdate() async {
    var url =
        Uri.parse("https://coronaapinepal.000webhostapp.com/fetchapi.php");
    var response = await http.get(url);
    var jsondata = json.decode(response.body);
    setState(() {
      data = jsondata;
      loading = false;
      // print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    getLatestupdate();
    // getWorldLatestupdate();
  }

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xFF473F97)));

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
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
      drawer: NavigationDrawerWidget(),
      body: SafeArea(
        //pull to refresh
        child: RefreshIndicator(
          onRefresh: () async => getLatestupdate(),
          child: SingleChildScrollView(
            child: loading == true
                ? Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: Center(
                        child: CircularProgressIndicator(
                      strokeWidth: 6.0,
                      // backgroundColor: Colors.red,
                      color: Color(0xFF473F97),
                    )),
                  )
                : Column(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 0),
                        width: width,
                        height: height * 0.35,
                        decoration: BoxDecoration(
                          color: Color(0xFF473F97),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  changeLanguage ? 'कोभिड-१९' : "COVID-19",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Image.asset(
                                  'images/Nepal.gif',
                                  height: 70,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  changeLanguage
                                      ? 'के तपाइँ बिरामी महसुस गर्दै हुनुहुन्छ?'
                                      : 'Are you feeling sick?',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  changeLanguage
                                      ? "यदि तपाइँ कुनै कोभिड-१९ का लक्षणहरु संग बिरामी महसुस गर्नुहुन्छ, कृपया फोन गर्नुहोस् वा हामीलाई तुरुन्तै मद्दतको लागी सन्देश पठाउनुहोस्"
                                      : 'If you feel sick with any COVID-19 symptoms, please call or text us immediately for help',
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15.0,
                                  ),
                                ),
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlatButton.icon(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      onPressed: () {
                                        customLaunch('tel:+9779851255834');
                                      },
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
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
                                    FlatButton.icon(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                      onPressed: () {
                                        customLaunch('sms:+9779851255837');
                                      },
                                      color: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      icon: const Icon(
                                        Icons.chat_bubble,
                                        color: Colors.white,
                                      ),
                                      label: Text(
                                        changeLanguage
                                            ? "सन्देश पठाउनुहोस्"
                                            : 'Send SMS',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      textColor: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: height * 0.37,
                        // color: Colors.indigo,
                        child: Column(
                          children: [
                            Flexible(
                              child: Row(
                                children: [
                                  //Total case data
                                  _buildStatCard(
                                      changeLanguage
                                          ? "संक्रमित"
                                          : 'Total case',
                                      changeLanguage
                                          ? getNepaliNumberFromText(
                                              data[0]['totalcase'])
                                          : data[0]['totalcase'],
                                      Colors.green),

                                  // Positive case data

                                  _buildStatCard(
                                      changeLanguage
                                          ? "हाल संक्रमित संख्या"
                                          : 'Positive cases',
                                      changeLanguage
                                          ? getNepaliNumberFromText(
                                              data[0]['positivecase'])
                                          : data[0]['positivecase'],
                                      Colors.orange),

                                  //death case data
                                  _buildStatCard(
                                      changeLanguage ? "मृत्यु भएको" : 'Deaths',
                                      changeLanguage
                                          ? getNepaliNumberFromText(
                                              data[0]['deaths'])
                                          : data[0]['deaths'],
                                      Colors.red),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Row(
                                children: <Widget>[
                                  //recovered case data
                                  _buildStatCard(
                                      changeLanguage
                                          ? "डिस्चार्ज केसहरु"
                                          : 'Recovered',
                                      changeLanguage
                                          ? getNepaliNumberFromText(
                                              data[0]['recovered'])
                                          : data[0]['recovered'],
                                      Colors.teal),

                                  //isolation case data

                                  _buildStatCard(
                                      changeLanguage
                                          ? "आइसोलेसनमा"
                                          : 'Isolation',
                                      changeLanguage
                                          ? getNepaliNumberFromText(
                                              data[0]['isolation'])
                                          : data[0]['isolation'],
                                      Colors.lightBlue),

                                  //quarantined case data
                                  _buildStatCard(
                                      changeLanguage
                                          ? "क्वारेन्टाइनमा"
                                          : 'Quarantined',
                                      changeLanguage
                                          ? getNepaliNumberFromText(
                                              data[0]['quarantined'])
                                          : data[0]['quarantined'],
                                      Colors.purple),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                _buildStatCard(
                                    changeLanguage
                                        ? "आज संक्रमित"
                                        : "Today Case",
                                    changeLanguage
                                        ? getNepaliNumberFromText(
                                            data[0]['todaycase'])
                                        : data[0]['todaycase'],
                                    Colors.pink),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: height * 0.27,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                changeLanguage
                                    ? "रोकथाम सुझाव"
                                    : 'Prevention Tips',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'images/distance.png',
                                          height: 100,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(changeLanguage
                                            ? "सामाजिक दूरी\nराख्नुहोस्"
                                            : 'Avoid close\ncontact')
                                      ],
                                    ),
                                  ),
                                  Container(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        'images/mask.png',
                                        height: 100,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(changeLanguage
                                          ? "मास्क\nलगाउनुहोस्"
                                          : 'Wear a\nfacemask')
                                    ],
                                  )),
                                  Container(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        'images/wash_hands.png',
                                        height: 100,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(changeLanguage
                                          ? "आफ्नो हात सफा\nराख्नुहोस्"
                                          : 'Clean your\nhands often')
                                    ],
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ListTile(
                        title: Text(
                          changeLanguage ? "लक्षण" : "Symptoms",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SymptomsList()));
                          },
                          child: Text(
                            "view all",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      Symptoms(),
                      SizedBox(height: height * 0.1),
                      InfoPanel(),
                      SizedBox(
                        height: 20,
                      ),
                      Hotline(),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          changeLanguage
                              ? "हामी यो लडाइमा संगै छौं"
                              : "WE  ARE TOGETHER IN THIS FIGHT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  Expanded _buildStatCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                count,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
