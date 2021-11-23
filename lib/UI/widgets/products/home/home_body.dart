import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoptemplate/UI/modules/nav_screens/home/all_products.dart';
import 'package:shoptemplate/UI/modules/nav_screens/home/details/product_details.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/products/image_slider.dart';
import 'package:shoptemplate/UI/widgets/products/product_card.dart';
import 'package:shoptemplate/UI/widgets/smooth_page_indicator/build_smooth_page_indicator.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListView(
        children: [
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.24,
            child: ImageSlider(
              pageController: pageController,
              imagesList: images,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: BuildSmoothPageIndicator(
            pageController: pageController,
            list: images,
          )),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal : 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Offers %',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: kDefaultColor),
                ),
                InkWell(
                  onTap: () {
                    navigateTo(
                        context,
                        const AllProducts(
                          isOffers: true,
                        ));
                  },
                  child: const Text(
                    'See All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.38,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, childAspectRatio: 1.8),
                itemCount: salesProducts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      navigateTo(context,
                          ProductDetails(productModel: salesProducts[index]));
                    },
                    child: ProductCard(
                      productModel: salesProducts[index],
                    ),
                  );
                }),
          ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Arrivals',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, const AllProducts());
                },
                child: const Text(
                  'See All',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.8),
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      navigateTo(context,
                          ProductDetails(productModel: products[index]));
                    },
                    child: ProductCard(
                      productModel: products[index],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
