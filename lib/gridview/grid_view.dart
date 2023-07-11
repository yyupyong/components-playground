import 'package:flutter/material.dart';
import 'package:grid_sample/pageView/page_view.dart';

class GridContainer extends StatelessWidget {
  const GridContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 164.5,
          height: 228,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(height: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('24歳 東京都'), SizedBox(height: 5), Text('自己紹介')],
        )
      ],
    );
  }
}

Widget createGridView() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 164.5 / 274,
        crossAxisCount: 2,
      ),
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
    ),
  );
}
