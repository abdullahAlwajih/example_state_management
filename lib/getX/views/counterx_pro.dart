import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

import 'dashboard.dart';

class CounterXPro extends StatelessWidget {
  const CounterXPro({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final CounterController _counterController = Get.find();

    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: const Center(
        child: Dashboard()
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _counterController.increament();
        },
      ),
    );
  }
}
