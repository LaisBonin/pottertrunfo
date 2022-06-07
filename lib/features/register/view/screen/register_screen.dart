import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:potter_trunfo/features/register/view/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

class RegisterScreen extends StatelessWidget {
  final _controller = Modular.get<RegisterController>();
  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFF237A00), Color(0xFF003B7A)])),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const Flexible(
              //   fit: FlexFit.tight,
              //   child: Hero(
              //     tag: "flutter-logo",
              //     child: FlutterLogo(
              //       size: double.maxFinite,
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 16,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Observer(builder: (_) {
                    return TextField(
                      decoration: InputDecoration(
                        hintText: "Nome",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onChanged: _controller.changeName,
                    );
                  }),
                  const SizedBox(height: 24),
                  Observer(builder: (_) {
                    return TextField(
                      decoration: InputDecoration(
                        hintText: "E-mail",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onChanged: _controller.changeEmail,
                    );
                  }),
                  const SizedBox(height: 24),
                  Observer(builder: (_) {
                    return TextField(
                      obscureText: !_controller.isPasswordVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: _controller.isPasswordVisible
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed: _controller.changePasswordVisibility),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onChanged: _controller.changePassword,
                    );
                  }),
                  const SizedBox(height: 24),
                  Observer(builder: (_) {
                    return TextField(
                      obscureText: !_controller.isConfirmPasswordVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: _controller.isConfirmPasswordVisible
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed:
                                _controller.changeConfirmPasswordVisibility),
                        hintText: "Confirm Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onChanged: _controller.changeConfirmPassword,
                    );
                  }),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    child: const Text("Don’t have an account? Sign Up"),
                    onPressed: () async {},
                  ),
                  SizedBox(
                    height: 48,
                    child: Observer(builder: (_) {
                      bool isLoading = _controller.isButtonAtLoadingStatus;
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onPressed: _controller.areCredentialsValid
                            ? () async {
                                _controller.setButtonToLoadingStatus();
                                final resource =
                                    await _controller.registerUser();
                                if (resource.hasError) {
                                  // await showDialog(
                                  //         context: context,
                                  //         builder: (context) {
                                  //           // return CustomErrorDialog(
                                  //           //     errorMessage:
                                  //           //         resource.error.toString(),
                                  //           //     onPressed: () =>
                                  //           //         Navigator.pop(context));
                                  //         })
                                  //     .then((_) => _controller
                                  //         .isButtonAtLoadingStatus = false);
                                }

                                if (resource.status == Status.success) {
                                  Modular.to.pushNamed('/');
                                }
                              }
                            : null,
                        child: isLoading
                            ? Lottie.network(
                                "https://assets9.lottiefiles.com/private_files/lf30_ykdoon9j.json",
                                width: 36)
                            : Text(_controller.areCredentialsValid
                                ? "Registrar"
                                : "Credenciais inválidas"),
                      );
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
