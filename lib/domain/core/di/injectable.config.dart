// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:six30labstask/application/home/home_bloc.dart' as _i7;
import 'package:six30labstask/application/product/product_bloc.dart' as _i8;
import 'package:six30labstask/domain/home/home_service.dart' as _i3;
import 'package:six30labstask/domain/product/product_service.dart' as _i5;
import 'package:six30labstask/infrastucture/home/home_repository.dart' as _i4;
import 'package:six30labstask/infrastucture/product/product_repository.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.HomeService>(() => _i4.HomeRepository());
    gh.lazySingleton<_i5.ProductService>(() => _i6.ProductRepository());
    gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc(gh<_i3.HomeService>()));
    gh.factory<_i8.ProductBloc>(
        () => _i8.ProductBloc(gh<_i5.ProductService>()));
    return this;
  }
}
