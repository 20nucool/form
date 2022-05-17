import 'package:flutter/material.dart';
import 'package:form/pages/1st.dart';
import 'package:form/pages/2nd.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ElevatedButton(
              onPressed: () {
                Get.to(First());
              },
              child: Text('Go to Page 1')
              ),
              ElevatedButton(
              onPressed: () {
                Get.to(Second());
              },
              child: Text('Go to Page 2')
              ),
        ]),
      ),
    );
  }
}
