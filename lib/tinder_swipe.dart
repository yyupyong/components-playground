import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'grid_view.dart';

class TiderSwipe extends StatelessWidget {
  const TiderSwipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Swiper(
          itemBuilder: (context, index) {
            return GridContainer();
          },
          itemCount: 3,
          pagination: SwiperPagination(),
          control: SwiperControl()),
    );
  }
}
