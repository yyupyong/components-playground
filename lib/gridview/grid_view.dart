import 'package:flutter/material.dart';
import 'package:grid_sample/pageView/page_view.dart';

class GridContainer extends StatelessWidget {
  const GridContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
    );
  }
}

GridView createGridView() {
  return GridView.builder(
    itemCount: 100,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 50,
      mainAxisSpacing: 30,
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
  );
}
