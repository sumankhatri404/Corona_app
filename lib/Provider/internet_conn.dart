import 'package:corona_app/Pages/home.dart';
import 'package:corona_app/Pages/no_internet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'connectivity_provider.dart';

class InternetConnection extends StatefulWidget {
  @override
  _InternetConnectionState createState() => _InternetConnectionState();
}

class _InternetConnectionState extends State<InternetConnection> {
  @override
  void initState() {
    super.initState();
    Provider.of<ConnectivityProvider>(context, listen: false).startMonitoring();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageUI(),
    );
  }

  Widget pageUI() {
    return Consumer<ConnectivityProvider>(
      builder: (consumerContext, model, child) {
        if (model.isOnline != null) {
          return model.isOnline ? Home() : NoInternet();
        }
        return Container(
            // child: Center(
            //   child: CircularProgressIndicator(),
            // ),
            );
      },
    );
  }
}
