import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_api_ddd/presentation/_binding/home_binding.dart';

import 'presentation/views/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      home: MyHomePage(),
    );
  }
}
