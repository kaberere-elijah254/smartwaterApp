import 'package:flutter/material.dart';
import 'package:smartapp/core/app_export.dart';
import 'package:smartapp/widgets/custom_elevated_button.dart';
import 'package:smartapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                        colors: [appTheme.blueGray10001, appTheme.green5000])),
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
                                      height: 178.v,
                                      width: 283.h,
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup2,
                                                height: 178.v,
                                                width: 279.h,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 25.v),
                                                    child: Text(
                                                        "Welcome onboard!",
                                                        style: CustomTextStyles
                                                            .headlineSmallInterBlack900Bold)))
                                          ]))),
                              SizedBox(height: 32.v),
                              Text("sign up",
                                  style: CustomTextStyles
                                      .headlineSmallBlack900ExtraBold),
                              SizedBox(height: 31.v),
                              Text("Lets help you  meets our services.",
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 13.v),
                              _buildFullName(context),
                              SizedBox(height: 15.v),
                              _buildEmail(context),
                              SizedBox(height: 24.v),
                              _buildPassword(context),
                              SizedBox(height: 15.v),
                              _buildConfirmpassword(context),
                              SizedBox(height: 62.v),
                              _buildREGISTER(context),
                              SizedBox(height: 15.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean(context);
                                  },
                                  child: Container(
                                      decoration: AppDecoration.outlineBlack900,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Already have an account? ",
                                                style: CustomTextStyles
                                                    .titleLargeInterff000000),
                                            TextSpan(
                                                text: "sign in",
                                                style: CustomTextStyles
                                                    .titleLargeInterff09c0fa)
                                          ]),
                                          textAlign: TextAlign.left))),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomTextFormField(
            controller: fullNameController, hintText: "Enter your full name"));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Enter your email",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "Enter password",
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL22,
            fillColor: appTheme.gray5001));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "Confirm password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildREGISTER(BuildContext context) {
    return CustomElevatedButton(
        text: "REGISTER",
        margin: EdgeInsets.only(left: 32.h, right: 16.h),
        onPressed: () {
          onTapREGISTER(context);
        });
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapREGISTER(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
