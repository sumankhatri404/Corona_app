import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Provider/LanguageProvider.dart';
import 'Provider/connectivity_provider.dart';
import 'Provider/internet_conn.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SafeArea(
                child: Splash(),
              ));
        } else {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (ctx) => LanguageProvider()),
              ChangeNotifierProvider(
                create: (context) => ConnectivityProvider(),
                child: InternetConnection(),
              ),
            ],
            child: MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                // primarySwatch: Colors.blue,
                scaffoldBackgroundColor: Colors.white,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: InternetConnection(),
              // home: ImageList(),
              // home: ImportantLinks(),
            ),
          );
        }
      },
    );
  }
}

//splash screen
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xe1f5fe).withOpacity(1.0),
      body: Center(child: Image.asset('images/flutter_01.png')),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(Duration(seconds: 6));
  }
}
