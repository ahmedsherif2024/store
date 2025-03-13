import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageProduct extends StatefulWidget {
  const PageProduct({super.key});

  @override
  State<PageProduct> createState() => _PageProductState();
}

class _PageProductState extends State<PageProduct> {
  final PageController pageController = PageController();
  final List<String> images = [
    'assets/images/61GFi1twJ2L._AC_UL320_.jpg',
    'assets/images/7180g5gixsL._AC_UL320_.jpg',
    'assets/images/415btEPmfqL._AC_UL320_.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: PageView.builder(
            itemCount: images.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(10),
                child: Image.asset(
                  images[index],
                  height: 250,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: images.length,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.blue,
            dotHeight: 8,
            dotWidth: 8,
            spacing: 4,
          ),
        ),
        const SizedBox(height: 16,),
      ],
    );
  }
}