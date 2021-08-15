import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Expansion.dart';
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
      print(data);
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
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xFF473F97)));
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF473F97),
      //   elevation: 0.0,
      // ),
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
                            const EdgeInsets.only(left: 20, right: 20, top: 50),
                        width: width,
                        height: height * 0.37,
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
                                  "COVID-19",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Image.network(
                                  "https://bestanimations.com/media/flags/1039074932napal-flag-gif.gif?fbclid=IwAR2BRvoOgWnIMDwY7agzl7O1880YndQ-Y60gaUpMXuzfdeoAmt_k2vO58d4",
                                  height: 70,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Are you feeling sick?',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'If you feel sick with any COVID-19 symptoms, please call or text us immediately for help',
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15.0,
                                  ),
                                ),
                                SizedBox(height: 15),
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
                                        customLaunch('tel:+9779811536075');
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
                                        'Call Now',
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
                                        customLaunch('sms:+9779811536075');
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
                                        'Send SMS',
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
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.37,
                              // color: Colors.indigo,
                              child: Column(
                                children: [
                                  Flexible(
                                    child: Row(
                                      children: [
                                        _buildStatCard('Total case',
                                            data[1]['totalcase'], Colors.teal),
                                        _buildStatCard(
                                            'Positive cases',
                                            data[1]['positivecase'],
                                            Colors.orange),
                                        _buildStatCard('Deaths',
                                            data[1]['deaths'], Colors.red),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Row(
                                      children: <Widget>[
                                        _buildStatCard('Recovered',
                                            data[1]['recovered'], Colors.green),
                                        _buildStatCard(
                                            'Isolation',
                                            data[1]['isolation'],
                                            Colors.lightBlue),
                                        _buildStatCard(
                                            'Quarantined',
                                            data[1]['quarantined'],
                                            Colors.purple),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      _buildStatCard("Today Case",
                                          data[1]['todaycase'], Colors.pink),
                                    ],
                                  )
                                ],
                              ),
                            ),
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
                                'Prevention Tips',
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
                                        Text('Avoid close\ncontact')
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
                                      Text('Wear a\nfacemask')
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
                                      Text('Clean your\nhands often')
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
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Symptoms",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: height * 0.25,
                              child: Expansion(),
                            ),
                          ],
                        ),
                      ),
                      InfoPanel(),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "WE  ARE TOGETHER IN THIS FIGHT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
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
