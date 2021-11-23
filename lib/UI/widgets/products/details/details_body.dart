import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/products/details/avaliable_list.dart';
import 'package:shoptemplate/UI/widgets/products/details/review_card.dart';
import 'package:shoptemplate/UI/widgets/products/image_slider.dart';
import 'package:shoptemplate/UI/widgets/smooth_page_indicator/build_smooth_page_indicator.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';
import 'package:shoptemplate/core/models/product_model.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({
    Key? key,
    required this.pageController,
    required this.productModel,
  }) : super(key: key);

  final PageController pageController;
  final ProductModel productModel;

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  bool isExtend = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ImageSlider(
                    pageController: widget.pageController,
                    imagesList: widget.productModel.images,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: BuildSmoothPageIndicator(
                    pageController: widget.pageController,
                    list: widget.productModel.images,
                    isExpandingDots: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Row(
                    children: [
                      if (widget.productModel.offerPrice != 0.0)
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '\$${widget.productModel.offerPrice}',
                            style: TextStyle(
                                fontSize: 22.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      Text(
                        '\$${widget.productModel.price}',
                        style: TextStyle(
                            fontSize: widget.productModel.offerPrice != 0.0
                                ? 16.sp
                                : 22.sp,
                            color: widget.productModel.offerPrice != 0.0
                                ? Colors.black54
                                : kDefaultColor,
                            decoration: widget.productModel.offerPrice != 0.0
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '${widget.productModel.title}',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    if (widget.productModel.offerPrice != 0.0)
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle, color: kDefaultColor),
                        child: const Text(' %Offer',
                            style: TextStyle(color: Colors.white)),
                      ),
                    const Spacer(),
                    const Icon(
                      Ionicons.star,
                      size: 18,
                      color: kDefaultColor,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text('(${widget.productModel.rating})')
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        '${widget.productModel.details}',
                        maxLines: isExtend ? null : 1,
                        overflow: isExtend
                            ? TextOverflow.visible
                            : TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                isExtend = !isExtend;
                              });
                            },
                            child: Text(
                              isExtend ? 'See less' : 'See more',
                              style: Theme.of(context).textTheme.caption,
                            )))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                if (widget.productModel.size.isNotEmpty)
                  AvaliableList(
                    text: 'Size',
                    list: widget.productModel.size,
                    isSize: true,
                  ),
                 SizedBox(
                  height: widget.productModel.size.isNotEmpty ?   10 : 0,
                ),
                if (widget.productModel.colors.isNotEmpty)
                  AvaliableList(
                      text: 'Avaliable Colors',
                      list: widget.productModel.colors),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Reviews',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                const ReviewCard(
                  image: profileImage,
                  name: 'YS',
                  rating: 4.5,
                  review: 'Good product!',
                ),
                const Divider(),
                const ReviewCard(
                  image:
                      'https://image.freepik.com/free-photo/excited-man-pitching-great-idea-smiling-pleased-raising-finger-up-say-something-genius-got-plan-have-suggestion-standing-white-wall_176420-38408.jpg',
                  name: 'xxUser',
                  rating: 5,
                  review: 'Great!',
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 40,
            left: 10.0,
            child: CircleAvatar(
              backgroundColor: kDefaultColor.withOpacity(0.7),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Ionicons.arrow_back)),
            ))
      ],
    );
  }
}
