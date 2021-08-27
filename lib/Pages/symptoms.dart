import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
  const Symptoms({Key key}) : super(key: key);

  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        // color: Colors.red,
        height: height * 0.25,
        width: width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Card(
              child: Container(
                height: height * 0.1,
                width: width * 0.25,
                child: Image.asset(
                  'images/fever.jpg',
                  height: height * 0.5,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Card(
              child: Container(
                height: height * 0.1,
                width: width * 0.25,
                child: Image.asset(
                  'images/drycough.jpg',
                  height: height * 0.5,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Card(
              child: Container(
                height: height * 0.1,
                width: width * 0.25,
                child: Image.asset(
                  'images/tiredness.jpeg',
                  height: height * 0.5,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Card(
              child: Container(
                height: height * 0.1,
                width: width * 0.25,
                child: Image.asset(
                  'images/Aches.jpeg',
                  height: height * 0.2,
                ),
              ),
            ),
          ],
        ),
        // child: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Card(
        //       child: Container(
        //         width: width * 0.4,
        //         height: height * 0.4,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Card(
        //       child: Container(
        //         width: width * 0.4,
        //         height: height * 0.4,
        //         color: Colors.blue,
        //       ),
        //     ),
        //     Card(
        //       child: Container(
        //         width: width * 0.4,
        //         height: height * 0.4,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Card(
        //       child: Container(
        //         width: width * 0.4,
        //         height: height * 0.4,
        //         color: Colors.green,
        //       ),
        //     ),
        //     Card(
        //       child: Container(
        //         width: width * 0.4,
        //         height: height * 0.4,
        //         color: Colors.purple,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

