import 'package:dio/dio.dart';
import 'package:pkc/requester/end_points.dart';

class ClubsRepository {
  Dio dio = Dio();

  Future<void> getAllClubs() async {
    final response = await dio.get('ipEduardo/${EndPoints.getClubs()}');
  }
}
