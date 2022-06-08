import 'package:potter_trunfo/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:potter_trunfo/features/login/data/repositories/login_repository.dart';
import 'package:potter_trunfo/features/login/domain/use_cases/login_with_credentials_use_case.dart';
import 'package:potter_trunfo/features/login/view/controller/login_controller.dart';
import 'package:potter_trunfo/features/login/view/screen/login_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  
  @override
  List<Bind> get binds => [
        Bind<LoginRemoteDataSource>((i) => ApiLoginRemoteDataSource()),
        Bind<LoginRepository>((i) => DefaultLoginRepository()),
        Bind<LoginWithCredentialsUseCase>((i) => DefaultLoginWithCredentialsUseCase()),
        Bind<LoginController>((i) => LoginController())
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (context,args) =>  LoginScreen())
      ];
}