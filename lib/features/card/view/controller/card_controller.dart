
import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:potter_trunfo/features/card/domain/use_cases/card_api_use_case.dart';
part 'card_controller.g.dart';

class CardController = _CardControllerBase with _$CardController;

abstract class _CardControllerBase with Store {
  final _cardApi = Modular.get<CardApiUseCase>();

  @observable
  ObservableList characteresList = [].asObservable();
  
  @action
  Future<void> getHouse(String house) async {
    final characteres = await _cardApi.getHouse(house);
    
    print(characteres);
    
    // final results = characteres.map((e) => e.data()).toList();
    // characteresList.addAll(characteres.asObservable());

  }


}