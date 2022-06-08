import 'package:flutter_modular/flutter_modular.dart';
import 'package:potter_trunfo/features/card/data/data_sources/card_data_source.dart';
import 'package:potter_trunfo/features/card/data/repositories/card_repository.dart';
import 'package:potter_trunfo/features/card/domain/use_cases/card_api_use_case.dart';
import 'package:potter_trunfo/features/card/view/controller/card_controller.dart';
import 'view/screen/card_screen.dart';

class CardModule extends Module {
  
  @override
  List<Bind> get binds => [
        Bind<CardDataSource>((i) => ApiCardDataSource()),
        Bind<CardRepository>((i) => DefaultCardRepository()),
        Bind<CardApiUseCase>((i) => DefaultCardApiUseCase()),
        Bind<CardController>((i) => CardController())
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (context,args) =>  CardScreen(house:args.data))
      ];
}