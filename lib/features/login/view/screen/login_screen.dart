import 'package:google_fonts/google_fonts.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';
import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:potter_trunfo/core/widgets/dialog_box.dart';
import 'package:potter_trunfo/features/login/view/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  final _controller = Modular.get<LoginController>();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFF237A00), Color(0xFF003B7A)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Hero(
                  tag: "potter-trunfo",
                  child: Container(
                    height: 460,
                    width: 430,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/assets/logo.app.png"))),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Observer(builder: (_) {
                    return TextField(
                      cursorColor: AppColors.primarywhite,
                      style: TextStyle(
                          fontFamily: GoogleFonts.patrickHand().fontFamily,
                          fontSize: 18),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primarywhite),
                            borderRadius: BorderRadius.circular(16)),
                        hintText: "E-mail",
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: AppColors.primarywhite),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onChanged: _controller.changeEmail,
                    );
                  }),
                  const SizedBox(height: 24),
                  Observer(builder: (_) {
                    return TextField(
                      cursorColor: AppColors.primarywhite,
                      style: TextStyle(
                          fontFamily: GoogleFonts.patrickHand().fontFamily,
                          fontSize: 18),
                      obscureText: !_controller.isPasswordVisible,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primarywhite),
                            borderRadius: BorderRadius.circular(16)),
                        suffixIcon: IconButton(
                            icon: _controller.isPasswordVisible
                                ? const Icon(Icons.visibility, color: AppColors.primarywhite)
                                : const Icon(Icons.visibility_off, color: AppColors.primarywhite,),
                            onPressed: _controller.changePasswordVisibility),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onChanged: _controller.changePassword,
                    );
                  }),
                  SizedBox(height: 50),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     // TextButton(
                  //     //     child: const Text(
                  //     //       "Esqueci minha senha",
                  //     //       textAlign: TextAlign.start,
                  //     //     ),
                  //     //     onPressed: () {}),
                  //   ],
                  // ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    child: Text("Don’t have an account? Sign Up",
                        style: TextStyle(
                            color: AppColors.primarywhite,
                            fontFamily: GoogleFonts.patrickHand().fontFamily,
                            fontSize: 20)),
                    onPressed: () async {
                      await Modular.to.pushNamed('/register/');
                    },
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 55,
                    child: Observer(builder: (_) {
                      bool isLoading = _controller.isButtonAtLoadingStatus;
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.primarygreen,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onPressed: _controller.areCredentialsValid
                            ? () async {
                                _controller.setButtonToLoadingStatus();
                                final resource = await _controller.loginUser();
                                if (resource.hasError) {}

                                if (resource.status == Status.success) {
                                  Modular.to.pushNamed('/home/');
                                }
                              }
                            : null,
                        child: isLoading
                            ? Lottie.network(
                                "https://assets9.lottiefiles.com/private_files/lf30_nyep4twu.json",
                                width: 36)
                            : Text(
                                _controller.areCredentialsValid
                                    ? "Entrar"
                                    : "Entrar",
                                style: TextStyle(
                                    fontFamily:
                                        GoogleFonts.patrickHand().fontFamily,
                                    fontSize: 28)),
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
