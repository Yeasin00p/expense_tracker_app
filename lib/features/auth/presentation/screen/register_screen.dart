import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:expense_tracker_app/core/widget/logo_widget.dart';
import 'package:expense_tracker_app/features/auth/presentation/widget/custome_button.dart';
import 'package:expense_tracker_app/features/auth/presentation/widget/social_icon_button.dart';
import 'package:expense_tracker_app/features/auth/presentation/widget/text_field_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                'Nice to meet you',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.dark,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Before we begin, we need some details.',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(color: AppColors.gray),
              ),
              SizedBox(height: 20),
              TextFieldWidget(hintText: 'Username'),
              SizedBox(height: 16),
              TextFieldWidget(
                hintText: 'Enter your email',
                
              ),
              SizedBox(height: 12),
               TextFieldWidget(
                hintText: 'Password',
                
              ),
              SizedBox(height: 12),
               TextFieldWidget(
                hintText: 'Confirm password',
                suffixIcon: Icon(Icons.visibility),
              ),
              SizedBox(height: 12),
            
              Spacer(),
              CustomButton(text: 'Register', onPressed: () {}),
              Spacer(),

              Text(
                'Or Register with',
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
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login Now',
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
