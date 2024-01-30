import 'package:flutter/material.dart';
import 'package:smartapp/core/app_export.dart';
import 'package:smartapp/widgets/custom_elevated_button.dart';
import 'package:smartapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.teal50, appTheme.blueGray5000])),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                      height: 168.v,
                                      width: 285.h,
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup2,
                                                height: 168.v,
                                                width: 272.h,
                                                alignment:
                                                    Alignment.centerLeft),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text("Welcome back!",
                                                    style: CustomTextStyles
                                                        .headlineSmallBlack900Bold))
                                          ]))),
                              SizedBox(height: 28.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgLoginSign,
                                  height: 150.v,
                                  width: 100.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 129.h)),
                              SizedBox(height: 22.v),
                              Text("sign in",
                                  style: CustomTextStyles
                                      .headlineSmallBlack900ExtraBold),
                              SizedBox(height: 17.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.h, right: 20.h),
                                  child: CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Enter your email",
                                      hintStyle: theme.textTheme.titleLarge!,
                                      textInputType: TextInputType.emailAddress,
                                      borderDecoration: TextFormFieldStyleHelper
                                          .fillOnPrimary,
                                      fillColor: theme.colorScheme.onPrimary)),
                              SizedBox(height: 20.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.h, right: 20.h),
                                  child: CustomTextFormField(
                                      controller: confirmpasswordController,
                                      hintText: "Confirm password",
                                      hintStyle: theme.textTheme.titleLarge!,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true,
                                      borderDecoration: TextFormFieldStyleHelper
                                          .fillOnPrimary,
                                      fillColor: theme.colorScheme.onPrimary)),
                              SizedBox(height: 6.v),
                              Text("forget password",
                                  style:
                                      CustomTextStyles.titleLargeLightblueA400),
                              SizedBox(height: 23.v),
                              CustomElevatedButton(
                                  text: "sign in",
                                  margin:
                                      EdgeInsets.only(left: 26.h, right: 20.h),
                                  buttonTextStyle:
                                      theme.textTheme.headlineSmall!,
                                  onPressed: () {
                                    onTapSignIn(context);
                                  }),
                              SizedBox(height: 26.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount(context);
                                  },
                                  child: Container(
                                      decoration: AppDecoration.outlineBlack900,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Don’t have an account ? ",
                                                style: CustomTextStyles
                                                    .titleLargeff000000),
                                            TextSpan(
                                                text: "sign up",
                                                style: CustomTextStyles
                                                    .titleLargeff0895c2)
                                          ]),
                                          textAlign: TextAlign.center))),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
