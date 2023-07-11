import 'package:flutter/material.dart';
import 'package:grid_sample/pageView/page_view.dart';

class GridContainer extends StatelessWidget {
  const GridContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.5,
      height: 274,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
    );
  }
}

GridView createGridView() {
  return GridView.builder(
    itemCount: 10,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      childAspectRatio: 164.5 / 274,
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 26,
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
