import 'package:corona_app/Pages/Faqs.dart';
import 'package:corona_app/Pages/important_links.dart';
import 'package:corona_app/Provider/LanguageProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key key}) : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LanguageProvider>(context);
    bool changeLanguage = lang.isNepali;
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: [
            const SizedBox(
              height: 55,
            ),
            buildMenuItem(
              text: changeLanguage ? "बारम्बार सोधिने प्रश्नहरू" : "FAQS",
              icon: Icons.question_answer,
              onClicked: () => selectedItem(context, 0),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: changeLanguage ? "महत्त्वपूर्ण लिंकहरु" : "Important links",
              icon: Icons.link,
              onClicked: () => selectedItem(context, 1),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({String text, IconData icon, VoidCallback onClicked}) {
  final color = Colors.white;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(
        color: color,
      ),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => FAQPage()));
      break;

    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ImportantLinks()));
      break;
  }
}
