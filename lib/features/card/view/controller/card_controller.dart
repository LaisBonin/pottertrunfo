
import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:potter_trunfo/features/card/domain/entities/api_entity.dart';
import 'package:potter_trunfo/features/card/domain/use_cases/card_api_use_case.dart';
part 'card_controller.g.dart';

class CardController = _CardControllerBase with _$CardController;

abstract class _CardControllerBase with Store {
  final _cardApi = Modular.get<CardApiUseCase>();

  @observable
  ObservableList<HpApi>characteresList = <HpApi>[].asObservable();
  
    @action
  Future<void> getHouse(String house) async {
    final result = await _cardApi.getHouse(house);
    
    characteresList.addAll(result.data!.asObservable());
  }


}