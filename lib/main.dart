import 'package:flutter/material.dart';
import 'package:number_generator/generator_change_notifier.dart';
import 'package:number_generator/range_selector_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GeneratorChangeNotifer(),
      child: MaterialApp(
        title: 'Number Generator',
        home: RangeSelectorPage(),
      ),
    );
  }
}
