import 'package:potter_trunfo/core/generics/api_response.dart';
import 'package:dio/dio.dart';

abstract class ApiRemoteClient {

  Future<HpApiResponse<Map<String, dynamic>>> get(String url);
}

class DioApiRemoteClient implements ApiRemoteClient {
  final _dio = Dio();

  @override
  Future<HpApiResponse<Map<String, dynamic>>> get(
      String url) async {
    
      final response = await _dio.get<Map<String, dynamic>>(url);
      
      return HpApiResponse(data: response.data);
    
  }

}