import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:six30labstask/application/product/product_bloc.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/domain/home/model/home_model.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';

class ProductImageListWidget extends StatelessWidget {
  const ProductImageListWidget({super.key, required this.product});
  final HomeModel product;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 1.5,
      crossAxisCount: 1,
      mainAxisSpacing: 15,
      children: List.generate(
        product.images!.length,
        (index) {
          final image = product.images![index];
          return Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          );
        },
      ),
    );
  }
}

class ProductThumbnailWidget extends StatelessWidget {
  const ProductThumbnailWidget(
      {super.key, required this.size, required this.product});

  final double size;
  final HomeModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: size * 0.7,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(product.thumbnail!), fit: BoxFit.cover)),
    );
  }
}

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [BoxShadow(blurRadius: 3, color: kGrey)]),
              child: iconWidget(
                icon: Icons.arrow_back_ios_new_rounded,
                color: kBlack,
                size: 20,
              ),
            ),
          ),
          textWidget(
              text: 'Drone Details',
              color: kBlack,
              size: 20,
              weight: FontWeight.bold),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(blurRadius: 3, color: kGrey)]),
            child: iconWidget(
              icon: Icons.share_outlined,
              color: kBlack,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDetailsBottomWidget extends StatelessWidget {
  const ProductDetailsBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state.isLoading == true) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError == true) {
              return Center(
                child: textWidget(text: 'Error Occur', color: kBlack, size: 15),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textWidget(text: 'Price', color: kGrey, size: 15),
                          textWidget(
                              text: "₹ ${state.product.price}",
                              color: kBlack,
                              size: 20,
                              weight: FontWeight.bold)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100), color: kBlue),
                    child: Center(
                      child: textWidget(
                        text: 'Add to Cart',
                        color: kWhite,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
