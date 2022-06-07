
import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:potter_trunfo/features/register/data/register_error.dart';
import 'package:potter_trunfo/features/register/domain/entities/user_entity.dart';
import 'package:potter_trunfo/features/register/domain/use_cases/register_with_credentials_use_case.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  final _registerWithCredentials = Modular.get<RegisterWithCredentialsUseCase>();

  @observable
  String email = '';

  @action
  void changeEmail(String newValue) => email = newValue;

  @observable
  String name = '';

  @action
  void changeName(String newValue) => name = newValue;


  @observable
  String password = '';

  @action
  void changePassword(String newValue) => password = newValue;

  @observable
  String confirmPassword = '';


  @action
  void changeConfirmPassword(String newValue) => confirmPassword = newValue;

  @observable
  Resource<UserEntity, RegisterError> user = Resource.loading();

  @observable
  bool isPasswordVisible = false;

  @observable
  bool isConfirmPasswordVisible = false;

  @observable
  bool isButtonAtLoadingStatus = false;

  @action
  void setButtonToLoadingStatus() => isButtonAtLoadingStatus = true;

  @action
  void changePasswordVisibility() => isPasswordVisible = !isPasswordVisible;

  @action
  void changeConfirmPasswordVisibility() => isConfirmPasswordVisible = !isConfirmPasswordVisible;

  @computed
  bool get areCredentialsValid => 
    isEmailValid 
    && isPasswordValid 
    && isConfirmPasswordValid 
    && isNameValid;

  @action
  Future<Resource<void, RegisterError>> registerUser() async {
    final resource = await _registerWithCredentials.registerUser(email, password);
    if (resource.hasError) {
      return Resource.failed(error: RegisterError.invalidCredentials);
    }
    user = resource;
    return Resource.success();
  }

  @computed
  bool get isEmailValid =>
      email.isNotEmpty && email.contains('@') && email.contains(".com");

  @computed
  bool get isNameValid => name.length > 1;

  @computed
  bool get isPasswordValid => password.length > 7;
  
  @computed
  bool get isConfirmPasswordValid => confirmPassword.length > 7;
}