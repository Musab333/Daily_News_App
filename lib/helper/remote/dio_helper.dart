import 'package:dio/dio.dart';
import 'package:news/helper/remote/end_points.dart';

class DioHelper {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: BASE_URL,
      receiveDataWhenStatusError: true,
    ),
  );

  static Future<Response> getData({
    required String url,
    required Map<String, dynamic>? query,
  }) async {
    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}
