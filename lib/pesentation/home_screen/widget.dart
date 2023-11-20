import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:six30labstask/application/home/home_bloc.dart';
import 'package:six30labstask/application/product/product_bloc.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/product_details/product_details.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';

class OptionListWidget extends StatelessWidget {
  const OptionListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        controller: PageController(
          viewportFraction: 0.3,
        ),
        scrollDirection: Axis.horizontal,
        children: const [
          kWidth15,
          TextTabWidget(text: 'All brand', color: kBlue),
          TextTabWidget(text: 'MIG Turbo', color: kLateGrey),
          TextTabWidget(text: 'Mini Drone', color: kLateGrey),
          kWidth15,
        ],
      ),
    );
  }
}

class SliderIndicatorWidget extends StatelessWidget {
  const SliderIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              state.pageImage.length,
              (index) => Padding(
                padding: const EdgeInsets.all(2.5),
                child: Container(
                  height: 5,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: state.currentIndex == index ? kBlue : kLateGrey,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ProductSliderWidget extends StatelessWidget {
  const ProductSliderWidget({
    super.key,
    required this.sizeW,
  });

  final double sizeW;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeW * 0.6,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError == true) {
            return Center(
                child:
                    textWidget(text: 'Error Occur', color: kBlack, size: 15));
          }
          return PageView.builder(
            itemCount: state.pageImage.length,
            controller: PageController(initialPage: state.currentIndex),
            onPageChanged: (value) {
              context.read<HomeBloc>().add(HomeEvent.onChange(value));
            },
            itemBuilder: (context, index) {
              final image = state.pageImage[index];
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon:
                    iconWidget(icon: Icons.search, color: kGrey, size: 30),
                hintText: 'Search Drone',
                hintStyle: const TextStyle(color: kGrey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: kWhite),
                ),
                fillColor: kLateGrey,
                filled: true,
              ),
            ),
          ),
        ),
        kWidth10,
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: kBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: iconWidget(
            icon: Icons.format_list_bulleted_rounded,
            color: kWhite,
            size: 30,
          ),
        )
      ],
    );
  }
}

class UserAndNotificationWidget extends StatelessWidget {
  const UserAndNotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 23,
          backgroundColor: kGrey,
          child: iconWidget(icon: Icons.person, color: kWhite, size: 30),
        ),
        kWidth10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(
              text: 'Welcome back',
              color: kGrey,
              size: 12,
            ),
            kHeight10,
            textWidget(
              text: 'Welcome back',
              color: kWhite,
              size: 15,
              weight: FontWeight.bold,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 23,
          backgroundColor: kLateGrey,
          child: iconWidget(
            icon: Icons.notifications_none_rounded,
            color: kWhite,
            size: 30,
          ),
        )
      ],
    );
  }
}

class ProductGridViewWidget extends StatelessWidget {
  const ProductGridViewWidget(
      {super.key, required this.sizeH, required this.sizeW});

  final double sizeH;
  final double sizeW;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return SizedBox(
            height: sizeH,
            width: double.infinity,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state.isError == true) {
          return SizedBox(
            height: sizeH * 0.5,
            width: double.infinity,
            child: Center(
              child: textWidget(
                text: 'Error Occur',
                color: kBlack,
                size: 15,
              ),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            childAspectRatio: .75,
            mainAxisSpacing: 15,
            shrinkWrap: true,
            children: List.generate(
              state.newLsit.length,
              (index) {
                final productData = state.newLsit[index];
                return InkWell(
                  onTap: () {
                    context.read<ProductBloc>().add(
                          ProductEvent.getProduct(
                            id: productData.id.toString(),
                          ),
                        );
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProductScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [BoxShadow(blurRadius: 3, color: kGrey)],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: sizeW * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  productData.thumbnail!,
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: productTextWidget(
                                        text: productData.title!,
                                        color: kBlack,
                                        size: 15),
                                  ),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: kLateGrey,
                                    child: iconWidget(
                                        icon: Icons.favorite_border_outlined,
                                        color: kRed,
                                        size: 15),
                                  )
                                ],
                              ),
                              kHeight5,
                              productTextWidget(
                                  text: "₹ ${productData.price}",
                                  color: kBlack,
                                  size: 15,
                                  weight: FontWeight.bold),
                              kHeight5,
                              Row(
                                children: [
                                  iconWidget(
                                      icon: Icons.star,
                                      color: kyellow,
                                      size: 15),
                                  kWidth5,
                                  productTextWidget(
                                      text: productData.rating!
                                          .toStringAsFixed(1),
                                      color: kBlack,
                                      size: 15,
                                      weight: FontWeight.bold),
                                  kWidth5,
                                  Expanded(
                                    child: productTextWidget(
                                        text: '(${productData.stock} reviews)',
                                        color: kGrey,
                                        size: 15),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
