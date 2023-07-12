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

class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10, mainAxisSpacing: 15, crossAxisCount: 2),
      itemBuilder: (context, index) => GridContainer(),
    );
  }
}
