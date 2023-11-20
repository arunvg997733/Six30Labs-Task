import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:six30labstask/application/main/main_bloc.dart';
import 'package:six30labstask/core/constant.dart';
import 'package:six30labstask/pesentation/widget/widget.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<MainBloc>().add(
                          const MainEvent.onChange(0),
                        );
                  },
                  icon: iconWidget(
                      icon: Icons.home_filled,
                      color: state.currentIndex == 0 ? kBlue : kGrey,
                      size: 30),
                ),
                IconButton(
                  onPressed: () {
                    context.read<MainBloc>().add(
                          const MainEvent.onChange(1),
                        );
                  },
                  icon: iconWidget(
                      icon: Icons.trolley,
                      color: state.currentIndex == 1 ? kBlue : kGrey,
                      size: 30),
                ),
                kHeight30,
                IconButton(
                  onPressed: () {
                    context.read<MainBloc>().add(
                          const MainEvent.onChange(2),
                        );
                  },
                  icon: iconWidget(
                      icon: Icons.event_note_rounded,
                      color: state.currentIndex == 2 ? kBlue : kGrey,
                      size: 30),
                ),
                IconButton(
                  onPressed: () {
                    context.read<MainBloc>().add(
                          const MainEvent.onChange(3),
                        );
                  },
                  icon: iconWidget(
                      icon: Icons.person_outline,
                      color: state.currentIndex == 3 ? kBlue : kGrey,
                      size: 30),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
