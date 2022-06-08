import 'package:flutter_modular/flutter_modular.dart';
import 'package:potter_trunfo/features/rules/view/screen/rules_screen.dart';

class RulesModule extends Module{

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => RulesScreen())
      ];

}