import 'package:f_login_responsive/app_colors.dart';
import 'package:f_login_responsive/app_icons.dart';
import 'package:f_login_responsive/app_styles.dart';
import 'package:f_login_responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Widget buildEmail(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Email',
            style: ralewayStyle.copyWith(
              fontSize: 12,
              color: AppColors.blueDarkColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          height: 50,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.whiteColor,
          ),
          child: TextFormField(
            style: ralewayStyle.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.blueDarkColor,
              fontSize: 12,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Image.asset(AppIcons.emailIcon),
              ),
              contentPadding: const EdgeInsets.only(top: 16),
              hintText: 'Enter Email',
              hintStyle: ralewayStyle.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.blueDarkColor.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Password',
            style: ralewayStyle.copyWith(
              fontSize: 12,
              color: AppColors.blueDarkColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Container(
          height: 50,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.whiteColor,
          ),
          child: TextFormField(
            style: ralewayStyle.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.blueDarkColor,
              fontSize: 12,
            ),
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: (() {}),
                icon: Image.asset(AppIcons.eyeIcon),
              ),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Image.asset(AppIcons.lockIcon),
              ),
              contentPadding: const EdgeInsets.only(top: 16),
              hintText: 'Enter Password',
              hintStyle: ralewayStyle.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.blueDarkColor.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSignInButton(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.mainBlueColor,
          ),
          child: Text(
            'Sign In',
            style: ralewayStyle.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.whiteColor,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForgotPassword(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style: ralewayStyle.copyWith(
            fontSize: 12,
            color: AppColors.mainBlueColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget buildTitle(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Let`s',
            style: ralewayStyle.copyWith(
              fontSize: 25,
              color: AppColors.blueDarkColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          TextSpan(
            text: ' Sign In ',
            style: ralewayStyle.copyWith(
              fontWeight: FontWeight.w800,
              color: AppColors.blueDarkColor,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDescription(BuildContext context) {
    return Text(
      'Hey, Enter your details to get sign in \nto your account.',
      style: ralewayStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
      ),
    );
  }

  Widget buildLeftSide(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      child: Responsive.isSScreen(context)
          ? const SizedBox()
          : Expanded(
              child: Container(
                height: height,
                color: AppColors.mainBlueColor,
                child: Center(
                  child: Text(
                    'AdminExpress',
                    style: ralewayStyle.copyWith(
                      fontSize: 48,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
    );
  }

  Widget buildRightSide(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Expanded(
      child: Container(
        height: height,
        margin: EdgeInsets.symmetric(
            horizontal:
                Responsive.isSScreen(context) ? height * 0.032 : height * 0.12),
        color: AppColors.backColor,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.2),
              buildTitle(context),
              SizedBox(height: height * 0.02),
              buildDescription(context),
              SizedBox(height: height * 0.064),
              buildEmail(context),
              SizedBox(height: height * 0.014),
              buildPassword(context),
              SizedBox(height: height * 0.03),
              buildForgotPassword(context),
              SizedBox(height: height * 0.05),
              buildSignInButton(context)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildLeftSide(context),
            buildRightSide(context),
          ],
        ),
      ),
    );
  }
}
