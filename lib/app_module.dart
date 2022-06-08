import 'package:potter_trunfo/core/adapters/api_client/api_client.dart';
import 'package:potter_trunfo/core/adapters/remote_client/remote_client.dart';
import 'package:potter_trunfo/features/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:potter_trunfo/features/register/register_module.dart';
import 'features/card/card_module.dart';
import 'features/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<ApiRemoteClient>(
          (i) => DioApiRemoteClient(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
         '/login/',
          module: LoginModule(),
        ),
        ModuleRoute(
          '/register/',
          module: RegisterModule(),
        ),
        ModuleRoute(
           Modular.initialRoute,
          module: HomeModule(),
        ),
        ModuleRoute(
          '/card/',
          module: CardModule(),
        ),
      ];
}