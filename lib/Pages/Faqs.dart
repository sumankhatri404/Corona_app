import 'dart:convert';

import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class FAQPage extends StatefulWidget {
  const FAQPage({Key key}) : super(key: key);

  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  var data;
  bool loading = true;

  Future questionAnswers() async {
    var url = Uri.parse(
        "http://coronaapinepal.000webhostapp.com/question_answer_api.php");
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );
    var jsondata = json.decode(response.body);
    // print(jsondata);
    setState(() {
      data = jsondata;
      loading = false;
      // print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    questionAnswers();
    // getWorldLatestupdate();
  }

  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;
    double height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF473F97),
        title: Text(changeLanguage ? "सोधिने प्रश्न" : 'FAQS'),
        centerTitle: true,
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 30),
        //     child: IconButton(
        //       onPressed: () {
        //         lang.updateLanguage();
        //       },
        //       icon: Icon(Icons.language),
        //       color: Colors.white,
        //       iconSize: width * 0.08,
        //     ),
        //   ),
        // ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async => questionAnswers(),
          child: loading == true
              ? Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Center(
                      child: CircularProgressIndicator(
                    strokeWidth: 6.0,
                    // backgroundColor: Colors.red,
                    color: Color(0xFF473F97),
                  )),
                )
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      title: Text(
                        data[index]['questions'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(data[index]['answers']),
                        )
                      ],
                    );
                  }),
        ),
      ),
    );
  }
}
