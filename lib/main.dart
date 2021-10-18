import 'package:example_state_management/getX/controllers/counter_controller.dart';
import 'package:example_state_management/getX/views/counterx_pro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ChangeNotifierProvider(
      //   create: (_) => CounterProvider(),
      //   child: const CounterPro(),
      // ),

      home: CounterXPro(),

      // home: BlocProvider(
      //   create: (_) => CounterBloc(),
      //   child: CounterBPro(),
      // ),

      // home: ProviderScope(
      //   child: CounterRPro(),
      // ),
    );
  }
}
