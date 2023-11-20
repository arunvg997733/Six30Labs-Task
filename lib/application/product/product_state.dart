part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState(
      {required HomeModel product,
      required bool isLoading,
      required bool isError,
      required bool isSuccess}) = _ProductState;
  factory ProductState.initial() {
    final data = HomeModel();
    return ProductState(
        product: data, isLoading: false, isError: false, isSuccess: false);
  }
}
