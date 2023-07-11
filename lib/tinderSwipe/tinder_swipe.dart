import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';

class TiderSwipe extends StatefulWidget {
  const TiderSwipe({Key? key}) : super(key: key);

  @override
  _TiderSwipeState createState() => _TiderSwipeState();
}

class _TiderSwipeState extends State<TiderSwipe> {
  Future<List<String>> fetchImages() async {
    // Dummy data
    return Future.delayed(
      Duration(seconds: 2),
      () => [
        'https://via.placeholder.com/350',
        'https://via.placeholder.com/350',
        'https://via.placeholder.com/350',
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: fetchImages(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<SwipeItem> swipeItems = snapshot.data!.map((url) {
            return SwipeItem(
              content: Image.network(url, fit: BoxFit.cover),
              likeAction: () {
                print("Image Liked");
              },
              nopeAction: () {
                print("Image Noped");
              },
            );
          }).toList();

          MatchEngine matchEngine = MatchEngine(swipeItems: swipeItems);

          return Scaffold(
            body: SwipeCards(
              matchEngine: matchEngine,
              itemBuilder: (context, index) {
                return swipeItems[index].content;
              },
              onStackFinished: () {},
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return CircularProgressIndicator();
      },
    );
  }
}
