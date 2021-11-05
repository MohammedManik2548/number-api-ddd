import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:number_api_ddd/presentation/controllers/my_home_page_controller.dart';

class MyHomePage extends GetView<MyHomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(),
          ElevatedButton(
            onPressed: () async {
              await controller.getYear();
            },
            child: Text("Submit"),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Obx(
                    () => controller.year.value == null
                        ? Text("Enter Your Year")
                        : Text(controller.year.value.toString()),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
