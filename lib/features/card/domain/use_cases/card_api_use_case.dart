import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:potter_trunfo/features/card/data/repositories/card_repository.dart';
import 'package:potter_trunfo/features/card/domain/entities/api_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class CardApiUseCase {
  Future<HpResource<List<HpApi>>> getHouse(
      String house);
}

class DefaultCardApiUseCase
    implements CardApiUseCase {
  @override
  Future<HpResource<List<HpApi>>> getHouse(
      String house) async {
    final _datasource = Modular.get<CardRepository>();

    final resource = await _datasource.getHouse(house);
    
    return HpResource.data(data: resource.data);
  }
}