import 'package:flutter/material.dart';
import 'package:form/pages/home.dart';
// import 'package:form/pages/1st.dart';
// import 'package:form/pages/home.dart';
import 'package:get/get.dart';
// import 'pages/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
