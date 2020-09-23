import 'package:flutter/material.dart';
import 'package:interactive_story/models/Logic.dart';
import 'package:interactive_story/widgets/MainView.dart';

Logic appLogic = Logic();

class InteractiveStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MainView(
        appLogic: appLogic,
      ),
    );
  }
}
