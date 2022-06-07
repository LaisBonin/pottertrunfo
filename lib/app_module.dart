import 'package:potter_trunfo/core/adapters/remote_client/remote_client.dart';
import 'package:potter_trunfo/features/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:potter_trunfo/features/register/register_module.dart';
import 'package:potter_trunfo/features/welcome/view/screen/welcome_screen.dart';
import 'package:potter_trunfo/features/welcome/welcome_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<RemoteClient>(
          (i) => DioRemoteClient(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Modular.initialRoute,
          module: WelcomeModule(),
        ),
        ModuleRoute(
          '/register/',
          module: RegisterModule(),
        ),
        // ModuleRoute(
        //   '/onboarding/',
        //   module: OnboardingModule(),
        // ),
      ];
}