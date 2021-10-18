import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:example_state_management/bloc/bloc/counter_bloc.dart';

import 'dashboard.dart';

class CounterBPro extends StatelessWidget {
   const CounterBPro({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: const Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<CounterBloc>().increament();
        },
      ),
    );
  }
}
