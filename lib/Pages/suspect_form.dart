import 'package:corona_app/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SuspectForm extends StatefulWidget {
  const SuspectForm({Key key}) : super(key: key);

  @override
  _SuspectFormState createState() => _SuspectFormState();
}

class _SuspectFormState extends State<SuspectForm> {
  String value;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController message = TextEditingController();

  String url = "https://coronaapinepal.000webhostapp.com/users_upload.php";

  void userRegister() {
    http.post(
      Uri.parse(url),
      body: {
        'fullname': name.text,
        'address': address.text,
        'phone': number.text,
        'message': message.text
      },
    );
  }

  cleartext() {
    name.clear();
    address.clear();
    number.clear();
    message.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF473F97),
        title: Text("Suspect Report"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Enter your fullname"),
                  validator: (String value) =>
                      value.isEmpty ? "This field can't be empty" : null,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: address,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Enter your Address"),
                  validator: (String value) =>
                      value.isEmpty ? "This field can't be empty" : null,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: number,
                  decoration: InputDecoration(labelText: "Contact number"),
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
                  height: 10,
                ),
                TextFormField(
                  maxLines: 5,
                  controller: message,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Description"),
                  validator: (String value) =>
                      value.isEmpty ? "This field can't be empty" : null,
                ),
                SizedBox(
                  height: 15,
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
                      userRegister();

                      return showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text(
                            "Success !!!",
                            style: TextStyle(color: Colors.green),
                          ),
                          content: Text("Your response has been submitted !!!"),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Home()));
                              },
                              child: Text("okay"),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Text(
                    "submit",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
