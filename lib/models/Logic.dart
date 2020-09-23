import 'Story.dart';

class Logic {
  int storyLevel = 0;

  List<Story> storyDB = [
    Story(
        storyText: 'Your brother is eating your chocolate',
        choice1: " Take it from him ",
        choice2: 'Tell your parents',
        choice3: 'Just leave him'),
    Story(
        storyText: 'He is crying',
        choice1: "Give it back to him",
        choice2: 'Eat it quickly ',
        choice3: 'Tell your parents'),
    Story(
        storyText: 'You are so cute',
        choice1: "Restart",
        choice2: '',
        choice3: ''),
    Story(
        storyText: 'You are so harsh',
        choice1: "Restart",
        choice2: '',
        choice3: ''),
    Story(
        storyText:
            'This is a great option your dad bought 2 chocolates for both of you ',
        choice1: "Restart",
        choice2: '',
        choice3: ''),
  ];

  List getStory() {
    return [
      storyDB[storyLevel].storyText,
      storyDB[storyLevel].choice1,
      storyDB[storyLevel].choice2,
      storyDB[storyLevel].choice3
    ];
  }

  void nextStory(int choice) {
    if (choice == 1 && storyLevel == 0) {
      storyLevel = 1;
    } else if (choice == 2 && storyLevel == 0) {
      storyLevel = 4;
    } else if (choice == 3 && storyLevel == 0) {
      storyLevel = 2;
    } else if (choice == 1 && storyLevel == 1) {
      storyLevel = 2;
    } else if (choice == 2 && storyLevel == 1) {
      storyLevel = 3;
    } else if (choice == 3 && storyLevel == 1) {
      storyLevel = 4;
    } else if (storyLevel >= 2) {
      restartGame();
    }
  }

  void restartGame() {
    storyLevel = 0;
  }

  bool isVisible() {
    storyLevel >= 2? true : false;
  }
}
