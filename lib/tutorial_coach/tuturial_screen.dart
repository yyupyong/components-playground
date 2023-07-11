import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  late TutorialCoachMark tutorialCoachMark;
  List<TargetFocus> targets = [];

  final GlobalKey _key = GlobalKey();
  final GlobalKey _key1 = GlobalKey();

  @override
  void initState() {
    initTargets();
    WidgetsBinding.instance.addPostFrameCallback(_layout);
    super.initState();
  }

  void _layout(_) {
    Future.delayed(const Duration(milliseconds: 100));
    showTutorial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            key: _key,
            width: MediaQuery.of(context).size.width * 0.8,
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "メールアドレス"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            key: _key1,
            width: MediaQuery.of(context).size.width * 0.8,
            child: const TextField(
              decoration:
                  InputDecoration(border: OutlineInputBorder(), hintText: "名前"),
            ),
          ),
        ],
      ),
    );
  }

  void initTargets() {
    targets.add(
      TargetFocus(
        identify: "target1",
        keyTarget: _key,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("OK")),
              ],
            ),
          ),
        ],
        shape: ShapeLightFocus.RRect,
        radius: 5,
      ),
    );
    targets.add(
      TargetFocus(
        identify: "target2",
        keyTarget: _key1,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "名前を入力してください",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
          )
        ],
        shape: ShapeLightFocus.RRect,
        radius: 5,
      ),
    );
  }

  void showTutorial() {
    tutorialCoachMark = TutorialCoachMark(
        targets: targets, paddingFocus: 10, textSkip: "", opacityShadow: 0.8)
      ..show(context: context);
  }
}
