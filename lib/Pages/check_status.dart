import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CheckStatus extends StatefulWidget {
  const CheckStatus({Key key}) : super(key: key);

  @override
  _CheckStatusState createState() => _CheckStatusState();
}

class _CheckStatusState extends State<CheckStatus> {
  String result = "";
  Future checkMobileNUmber() async {
    setState(() {
      result = "";
    });
    try {
      String url =
          "https://coronaapinepal.000webhostapp.com/check_status_from_mobile.php";

      var response =
          await http.post(Uri.parse(url), body: {'number': number.text});
      var checkNumber = json.decode(response.body);

      print(checkNumber);

      if (checkNumber.isEmpty) {
        setState(() {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: Text(
                "No records found !!! Please enter valid credentials",
                style: TextStyle(color: Colors.amber),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text("okay"),
                ),
              ],
            ),
          );
        });
        number.clear();
      }

      if (checkNumber[0]['status'] == "1") {
        setState(() {
          // result = "Your status has been completed";

          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: Text(
                "Your status has been completed,our team will contact you soon !!!",
                style: TextStyle(color: Colors.green),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text("okay"),
                ),
              ],
            ),
          );
        });
        number.clear();
      } else {
        setState(() {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: Text(
                "Your result is still pending",
                style: TextStyle(color: Colors.red),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text("okay"),
                ),
              ],
            ),
          );
        });
        number.clear();
      }
      print(checkNumber);
    } catch (e) {
      print(e);
    }
  }

  TextEditingController number = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: Text("Check Status"),
          centerTitle: true,
          backgroundColor: Color(0xFF473F97),
          elevation: 0.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  controller: number,
                  decoration: InputDecoration(
                      labelText: "Enter your phone number to check the status"),
                  // validator: (String value) =>
                  //     value.isEmpty ? "This field can't be empty" : null,

                  validator: (value) {
                    if (!value.contains((new RegExp(
                        r'^(98[0-3]{1}[0-9]{7}|98[4-6]{1}[0-9]{7})$')))) {
                      return 'Please enter valid mobile number';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        // side: BorderSide(width: 2.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_key.currentState.validate()) {
                      checkMobileNUmber();
                    }
                  },
                  child: Text(
                    "search",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                if (result.isNotEmpty) Text(result)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
