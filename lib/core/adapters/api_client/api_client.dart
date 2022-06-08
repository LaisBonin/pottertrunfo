import 'package:potter_trunfo/core/generics/api_response.dart';
import 'package:dio/dio.dart';
import 'package:potter_trunfo/features/card/domain/entities/api_entity.dart';

abstract class ApiRemoteClient {

  Future<HpApiResponse<List<HpApi>>> get(String url);
}

class DioApiRemoteClient implements ApiRemoteClient {
  final _dio = Dio();

  @override
  Future<HpApiResponse<List<HpApi>>> get(
      String url) async {

      final response = await _dio.get(url);

      final result = List<HpApi>.from(response.data.map((e) => HpApi.fromJson(e)).toList());
      
      return HpApiResponse(data: result);
  }

}