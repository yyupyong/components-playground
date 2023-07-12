import 'package:flutter/material.dart';
import 'package:grid_sample/pageView/page_view.dart';

class GridContainer extends StatelessWidget {
  const GridContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final itemWidth = size / 2 - 30;
    final itemHeight = itemWidth * 1.8;
    return Column(
      children: [
        Container(
          width: itemWidth,
          height: itemHeight,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(height: 15),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [Text('24歳 東京都'), SizedBox(height: 5), Text('自己紹介')],
            ),
          ],
        )
      ],
    );
  }
}

Widget createGridView() {
  return GridView.builder(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    itemCount: 10,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.6, crossAxisCount: 2, mainAxisSpacing: 10),
    itemBuilder: (context, index) {
      return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PageViewcreater(
                          index: index,
                        )));
          },
          child: const GridContainer());
    },
  );
}
