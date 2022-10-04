import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jawaracaleg/controllers/auth_controller.dart';
import 'package:jawaracaleg/pages/auth/register_page.dart';
import '../../config/app_colors.dart';
import '../../config/app_icons.dart';
import '../../widgets/auth_button.dart';
import '../../widgets/custom_formfield.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgot_password_page.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Get.put(AuthController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// app icon
                SizedBox(height: height * 0.05),
                Image.asset(
                  AppIcons.appLogo,
                  height: 70,
                ),

                /// Don't Have an Account text
                SizedBox(height: height * 0.05),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Belum Punya Akun?',
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 10.0)),
                      TextSpan(
                        text: 'SIGN UP',
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(
                                const RegisterPage(),
                              ),
                      ),
                    ],
                  ),
                ),

                /// email field
                SizedBox(height: height * 0.1),
                  CustomFormField(
                    headingText: "Email",
                    hintText: "Email",
                    obsecureText: false,
                    suffixIcon: const SizedBox(),
                    controller: controller.emailC,
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                  ),

                /// password field
                SizedBox(height: height * 0.02),
                CustomFormField(
                  headingText: "Password",
                  maxLines: 1,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.text,
                  hintText: "At least 8 Character",
                  obsecureText: controller.hidePassword.value,
                  suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility), 
                      onPressed: () {
                        controller.hidePassword.toggle();
                      }),
                  controller: controller.passwordC,
                ),

                /// Login button
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                      child: InkWell(
                        onTap: () {
                          Get.to(const ForgotPasswordPage());
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: AppColors.mainColor.withOpacity(0.7),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                AuthButton(
                  onTap: () {
                    controller.login();
                  },
                  text: 'Sign In',
                ),

                /// forgot password Button
                SizedBox(height: height * 0.01),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/forgot-password');
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
