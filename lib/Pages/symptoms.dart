import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Symptoms extends StatefulWidget {
  const Symptoms({Key key}) : super(key: key);

  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  var data;
  bool loading = true;

  Future imageList() async {
    var url =
        Uri.parse("https://coronaapinepal.000webhostapp.com/symptoms_api.php");
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );
    var jsondata = json.decode(response.body);
    // print(jsondata);
    setState(() {
      data = jsondata;
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    imageList();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: loading == true
          ? Center(
              child: CircularProgressIndicator(
              strokeWidth: 6.0,
              // backgroundColor: Colors.red,
              color: Color(0xFF473F97),
            ))
          : Container(
              height: height * 0.25,
              width: width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: height * 0.2,
                        width: width * 0.25,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: Colors.grey.withOpacity(0.3),
                                width: 1,
                              ),
                            ),
                            child: Image.network(
                              "https://coronaapinepal.000webhostapp.com/images/" +
                                  data[index]['file'].trim(),
                              height: height * 0.5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        data[index]['title'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
            ),
    );
  }
}
