import 'package:flutter/material.dart';
import 'package:smartapp/core/app_export.dart';
import 'package:smartapp/widgets/custom_elevated_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 279.h,
                          margin: EdgeInsets.only(right: 96.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 44.h, vertical: 31.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup2),
                                  fit: BoxFit.cover)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 71.v),
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "water",
                                          style: CustomTextStyles
                                              .headlineSmallffffffff),
                                      TextSpan(
                                          text: "Token",
                                          style: theme.textTheme.displaySmall)
                                    ]),
                                    textAlign: TextAlign.center)
                              ]))),
                  SizedBox(height: 6.v),
                  Container(
                      decoration: AppDecoration.outlineBlack,
                      child: Text("smart water management app",
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 9.v),
                  Divider(
                      color: appTheme.green500, indent: 28.h, endIndent: 27.h),
                  SizedBox(height: 12.v),
                  Text("we help you meet our services",
                      style: CustomTextStyles.bodyLargePoppins),
                  SizedBox(height: 5.v),
                  _buildSmartWaterManagement(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildGetStartedButton(context)));
  }

  /// Section Widget
  Widget _buildSmartWaterManagement(BuildContext context) {
    return SizedBox(
        height: 381.v,
        width: 317.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle45,
              height: 381.v,
              width: 317.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: 285.h,
                  margin: EdgeInsets.only(bottom: 32.v),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                      "Your smart water compassion!\nleverage water usage and your money ",
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.headlineSmallBlack900)))
        ]));
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
        height: 86.v,
        text: "GET STARTED",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 18.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapGetStartedButton(context);
        });
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapGetStartedButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
