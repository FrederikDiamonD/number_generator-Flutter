import 'dart:math';

import 'package:flutter/material.dart';
import 'package:number_generator/generator_change_notifier.dart';
import 'package:provider/provider.dart';

class GeneratorPage extends StatelessWidget {
  GeneratorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generator"),
      ),
      body: Center(
        child: Consumer<GeneratorChangeNotifer>(
          builder: (context, notifier, child) {
            return Text(
              notifier.generatedNumber?.toString() ?? 'Generate a number',
              style: TextStyle(
                fontSize: 42.0,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Generate'),
        onPressed: () {
          context.read<GeneratorChangeNotifer>().generateRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
