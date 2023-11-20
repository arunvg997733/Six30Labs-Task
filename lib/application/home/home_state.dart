part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required List<HomeModel> newLsit,
      required bool isLoading,
      required bool isError,
      required List<String> pageImage,
      required int currentIndex}) = _HomeState;
  factory HomeState.initial() => const HomeState(
      newLsit: [],
      isLoading: false,
      isError: false,
      pageImage: [],
      currentIndex: 0);
}
