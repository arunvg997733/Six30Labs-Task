import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:six30labstask/domain/home/home_service.dart';
import 'package:six30labstask/domain/home/model/home_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeService homeService;
  HomeBloc(this.homeService) : super(HomeState.initial()) {
    on<_GetHomeData>((event, emit) async {
      if (state.newLsit.isNotEmpty) {
        return;
      }
      emit(state.copyWith(isLoading: true));
      final result = await homeService.getHomeData();

      final newState = result.fold((l) {
        return HomeState(
            newLsit: [],
            isLoading: false,
            isError: true,
            pageImage: [],
            currentIndex: state.currentIndex);
      }, (r) {
        return HomeState(
            newLsit: r,
            isLoading: false,
            isError: false,
            pageImage: r[0].images!,
            currentIndex: state.currentIndex);
      });

      emit(newState);
    });

    on<_OnChange>((event, emit) {
      emit(state.copyWith(currentIndex: event.index));
    });
  }
}
