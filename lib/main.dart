import 'package:flutter/material.dart';
import 'package:selectable_text_toolbar_example/custom_selection_toolbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Toolbar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SelectableText.rich(
            TextSpan(text: "Hello World"),
            selectionControls:
                CustomTextSelectionControls(customButton: (start, end) {
              print(
                "Hello World".substring(start, end),
              );
            }),
          ),
        ),
      ),
    );
  }
}
