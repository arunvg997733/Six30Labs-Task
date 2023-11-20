import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:six30labstask/application/home/home_bloc.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/home_screen/widget.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    context.read<HomeBloc>().add(const HomeEvent.getHomeData());
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Stack(
        children: [
          Container(
            height: sizeH,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/drone.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft),
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    UserAndNotificationWidget(),
                    kHeight20,
                    SearchWidget(),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: kWhite),
                child: Column(
                  children: [
                    ProductSliderWidget(sizeW: sizeW),
                    const SliderIndicatorWidget(),
                    kHeight10,
                    const OptionListWidget(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          textWidget(
                            text: 'Camera Drone',
                            color: kBlack,
                            size: 20,
                            weight: FontWeight.w500,
                          ),
                          const Spacer(),
                          textWidget(
                              text: 'View All',
                              color: kBlue,
                              size: 15,
                              weight: FontWeight.w500),
                        ],
                      ),
                    ),
                    ProductGridViewWidget(sizeH: sizeH, sizeW: sizeW),
                    kHeight30,
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
