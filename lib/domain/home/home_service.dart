import 'package:dartz/dartz.dart';
import 'package:six30labstask/domain/core/failure/failure.dart';
import 'package:six30labstask/domain/home/model/home_model.dart';

abstract class HomeService {
  Future<Either<MainFailure, List<HomeModel>>> getHomeData();
}
