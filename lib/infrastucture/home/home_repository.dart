import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:six30labstask/domain/core/api_end_points/api_endpoints.dart';
import 'package:six30labstask/domain/core/failure/failure.dart';
import 'package:six30labstask/domain/home/home_service.dart';
import 'package:six30labstask/domain/home/model/home_model.dart';

@LazySingleton(as: HomeService)
class HomeRepository implements HomeService {
  @override
  Future<Either<MainFailure, List<HomeModel>>> getHomeData() async {
    try {
      final uri = Uri.parse(ApiEndPoints.home);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        List<HomeModel> newList = [];
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        for (var element in data['products']) {
          newList.add(HomeModel.fromJson(element));
        }
        return Right(newList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
