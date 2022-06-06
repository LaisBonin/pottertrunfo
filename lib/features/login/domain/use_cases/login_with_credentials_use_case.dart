import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:potter_trunfo/features/login/data/login_error.dart';
import 'package:potter_trunfo/features/login/data/repositories/login_repository.dart';
import 'package:potter_trunfo/features/login/domain/entities/user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class LoginWithCredentialsUseCase {
  Future<Resource<UserEntity, LoginError>> loginUser(
      String email, String password);
}

class DefaultLoginWithCredentialsUseCase
    implements LoginWithCredentialsUseCase {
  @override
  Future<Resource<UserEntity, LoginError>> loginUser(
      String email, String password) async {
    final _repository = Modular.get<LoginRepository>();

    final resource = await _repository.loginUser(email, password);
    if (resource.hasError) {
      return Resource.failed(error: LoginError.invalidCredentials);
    }
    return Resource.success(data: resource.data);
  }
}