// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
import 'package:flutter/material.dart';

import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/product_card.dart';
import 'colors.dart';
import 'package:carousel_slider/carousel_slider.dart' as carousel;


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late final carousel.CarouselSliderController _controller;

  @override
  void initState() {
    super.initState();
    _controller = carousel.CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> products = ProductsRepository.loadProducts(Category.all);

    return Expanded(
      child: Column(
        children: [
          const SizedBox(height: 150),
          carousel.CarouselSlider.builder(
            itemCount: products.length,
            carouselController: _controller,
            itemBuilder: (context, index, realIndex) {
              final product = products[index];
              return Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.18),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  padding: const EdgeInsets.all(12),
                  child: ProductCard(product: product),
                ),
              );
            },
            options: carousel.CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.4,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              enlargeCenterPage: true,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: products.asMap().entries.map((entry) {
                int index = entry.key;
                return GestureDetector(
                  onTap: () => _controller.jumpToPage(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: _currentIndex == index ? 16.0 : 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: _currentIndex == index
                          ? AppColors.accentPurple
                          : AppColors.textDisabled.withOpacity(0.5),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
