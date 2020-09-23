import 'package:flutter/material.dart';
import 'package:interactive_story/models/Logic.dart';
import 'package:interactive_story/widgets/choiceButton.dart';

class MainView extends StatefulWidget {
  final Logic appLogic;

  MainView({this.appLogic});
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        widget.appLogic.getStory()[0],
                        style: TextStyle(
                          height: 22,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ChoiceButton(context, widget.appLogic.getStory()[1], () {
              setState(() {
                widget.appLogic.nextStory(1);
              });
            }, Colors.blue, true),
            ChoiceButton(context, widget.appLogic.getStory()[2], () {
              setState(() {
                widget.appLogic.nextStory(2);
              });
            }, Colors.teal, true),
            ChoiceButton(context, widget.appLogic.getStory()[3], () {
              setState(() {
                widget.appLogic.nextStory(3);
              });
            }, Colors.purple, true),
          ],
        ),
      ),
    );
  }
}
