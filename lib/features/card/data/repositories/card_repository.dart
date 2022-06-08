import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:potter_trunfo/features/card/data/data_sources/card_data_source.dart';
import 'package:potter_trunfo/features/card/domain/entities/api_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class CardRepository {
  Future<HpResource<List<HpApi>>> getHouse(String house);
}

class DefaultCardRepository implements CardRepository {
  final _dataSource = Modular.get<CardDataSource>();

  @override
  Future<HpResource<List<HpApi>>> getHouse(String house) async {
    final resource = await _dataSource.getHouse(house);

    final hpMap = resource.data;
    return HpResource.data(data: hpMap);
  }
}
