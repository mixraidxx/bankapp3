import 'package:flutter/material.dart';

import 'Brand/Theme.dart';
import 'Views/CardDetailView.dart';
import 'Views/HomeView.dart';
import 'Views/LoginView.dart';
import 'Views/MainView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: BrandTheme.appTheme,
      home: LoginView(),
      routes: {
        MainView.routeName: (context) => MainView(),
        CardDeatilView.routeName: (context) => CardDeatilView()
      },
    );
  }
}
