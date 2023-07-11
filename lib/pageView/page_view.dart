import 'package:flutter/material.dart';

class PageViewcreater extends StatefulWidget {
  const PageViewcreater({required this.index});

  final int index;

  @override
  State<PageViewcreater> createState() => _PageViewcreaterState();
}

class _PageViewcreaterState extends State<PageViewcreater> {
  //こいつがインスタンス生成されるたびにinitialPageとして登録される
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        onPageChanged: (int index) {
          //ここでpageが切り替わった際の処理を呼び出せる
          print(index);
        },
        //ここで生成されるアイテムはControllerによって管理されるのでgridViewから渡ってきたindexのアイテムが生成される
        controller: _pageController,
        itemBuilder: (context, index) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    index.toString(),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back")),
                  ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      child: Text("Next"))
                ],
              ),
            ),
          );
        });
  }
}
