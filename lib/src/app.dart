import 'package:cumidas/src/tabs/tabs.dart';
import 'package:flutter/material.dart';

import 'login/login_page.dart';


class App extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicativo Flutter",
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 124, 25, 120),
      ),
      home: Tabs(),
    );
  }
}
