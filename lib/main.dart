import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_home_page_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyHomePageCubit>(
      create: (context) => MyHomePageCubit(),
      child: BlocBuilder<MyHomePageCubit, Color>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: state,
            appBar: AppBar(
              title: const Text("ДЗ"),
              centerTitle: true,
            ),
            //(синий, красный, жёлтый, зеленый)
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      context.read<MyHomePageCubit>().onBlue();
                    },
                    style: _buttonStyle(Colors.blue),
                    child: const Text(
                      'Синий',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<MyHomePageCubit>().onRed();
                    },
                    style: _buttonStyle(Colors.red),
                    child: const Text(
                      'красный',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<MyHomePageCubit>().onYellow();
                    },
                    style: _buttonStyle(Colors.yellow),
                    child: const Text(
                      'жёлтый',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<MyHomePageCubit>().onGreen();
                    },
                    style: _buttonStyle(Colors.green),
                    child: const Text(
                      'зеленый',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  ButtonStyle _buttonStyle(MaterialColor color) {
    return ButtonStyle(backgroundColor: MaterialStateProperty.all(color));
  }
}

