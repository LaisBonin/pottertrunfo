import 'package:potter_trunfo/core/adapters/api_client/api_client.dart';
import 'package:potter_trunfo/core/constants/api_routes.dart';
import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class CardDataSource {
  Future<HpResource<Map<String, dynamic>>> getHouse(
      String house);

}

class ApiCardDataSource implements CardDataSource {
  final _apiRemoteClient = Modular.get<ApiRemoteClient>();

  @override
  Future<HpResource<Map<String, dynamic>>> getHouse(
      String house) async {
      
    final url = HpApiRoutes.houseHpApiRoute + '/$house';
    final response = await _apiRemoteClient.get(url);
    return HpResource.data(data:response.data);
  }
}
