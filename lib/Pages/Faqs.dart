
import 'package:flutter/material.dart';

import '../Model/Datasource.dart';


class FAQPage extends StatelessWidget {
  // const FAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF473F97),
        title: Text('FAQS'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(DataSource.questionAnswers[index]['answer']),
                )
              ],
            );
          }),
    );
  }
}
