import 'package:flutter/material.dart';
import 'package:number_generator/generator_page.dart';
import 'package:number_generator/range_selector_form.dart';

class RangeSelectorPage extends StatelessWidget {
  RangeSelectorPage({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Range"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => GeneratorPage(),
              ),
            );
          }
        },
      ),
    );
  }
}
