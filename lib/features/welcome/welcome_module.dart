import 'package:flutter_modular/flutter_modular.dart';
import 'package:potter_trunfo/features/welcome/view/screen/welcome_screen.dart';

class WelcomeModule extends Module {

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => WelcomeScreen())
      ];
}