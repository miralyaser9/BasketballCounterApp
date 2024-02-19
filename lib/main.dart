import 'package:basketball/cubit/counter_cubit.dart';
import 'package:basketball/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( pointscounter());
}

class pointscounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()

      ),
    );
  }
}