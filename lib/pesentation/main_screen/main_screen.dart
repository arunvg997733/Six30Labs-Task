import 'package:flutter/material.dart';
import 'package:six30labstask/application/main/main_bloc.dart';
import 'package:six30labstask/application/main/data/data.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/main_screen/widget.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return MainData.pages[state.currentIndex];
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: iconWidget(
            icon: Icons.center_focus_strong_outlined, color: kWhite, size: 30),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
