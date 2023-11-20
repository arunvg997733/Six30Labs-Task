import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:six30labstask/application/product/product_bloc.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/product_details/widget.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ProductBloc, ProductState>(
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
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const ProductDetailsAppBar(),
                  ProductThumbnailWidget(size: size, product: state.product),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        productTextWidget(
                            text: state.product.title!,
                            color: kBlack,
                            size: 30,
                            weight: FontWeight.bold),
                        kHeight10,
                        Row(
                          children: [
                            textWidget(
                                text: "₹ ${state.product.price}",
                                color: kBlack,
                                size: 20,
                                weight: FontWeight.bold),
                            const Spacer(),
                            Row(
                              children: [
                                iconWidget(
                                    icon: Icons.star, color: kyellow, size: 20),
                                kWidth5,
                                textWidget(
                                    text: state.product.rating!
                                        .toStringAsFixed(1),
                                    color: kBlack,
                                    size: 20,
                                    weight: FontWeight.bold),
                                kWidth5,
                                textWidget(
                                    text: '(${state.product.stock} reviews)',
                                    color: kGrey,
                                    size: 20)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      controller: PageController(
                        viewportFraction: 0.3,
                      ),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        kWidth15,
                        TextTabWidget(text: 'Discription', color: kBlue),
                        TextTabWidget(text: 'Specification', color: kLateGrey),
                        TextTabWidget(text: 'Mini Drone', color: kLateGrey),
                        kWidth15,
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textWidget(
                          text: state.product.brand!,
                          color: kBlack,
                          size: 20,
                          weight: FontWeight.bold,
                        ),
                        kHeight10,
                        discriptionTextWidget(
                          text: state.product.description!,
                          color: kGrey,
                          size: 15,
                        ),
                        kHeight10,
                        ProductImageListWidget(
                          product: state.product,
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const ProductDetailsBottomWidget(),
    );
  }
}
