import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:expense_tracker_app/core/widget/logo_widget.dart';
import 'package:expense_tracker_app/features/auth/presentation/widget/custome_button.dart';
import 'package:expense_tracker_app/features/auth/presentation/widget/social_icon_button.dart';
import 'package:expense_tracker_app/features/auth/presentation/widget/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(height: 40),
              LogoWidget(),
              SizedBox(height: 20),
              Text(
                'Welcome back! Glade to see you Again!',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.dark,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              TextFieldWidget(hintText: 'Enter your email'),
              SizedBox(height: 16),
              TextFieldWidget(
                hintText: 'Enter your password',
                suffixIcon: Icon(Icons.visibility),
              ),
              SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: AppColors.gray),
                  ),
                ),
              ),
              Spacer(),
              CustomButton(text: 'Login', onPressed: () {}),
              Spacer(),

              Text(
                'Or login with',
                style: TextStyle(color: AppColors.dark, fontSize: 14),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SocialLoginButton(
                    onPressed: () {},
                    svgAsset: 'assets/icons/facebook_ic.svg',
                  ),
                  SizedBox(width: 8),
                  SocialLoginButton(
                    onPressed: () {},
                    svgAsset: 'assets/icons/google_ic.svg',
                  ),
                  SizedBox(width: 8),
                  SocialLoginButton(
                    onPressed: () {},
                    svgAsset: 'assets/icons/cib_apple.svg',
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register Now',
                      style: TextStyle(color: AppColors.primary),
                    ),
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
