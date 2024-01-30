import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smartapp/core/app_export.dart';
import 'package:smartapp/widgets/custom_elevated_button.dart';
import 'package:smartapp/widgets/custom_icon_button.dart';
import 'package:smartapp/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class AnalysisScreen extends StatelessWidget {
  AnalysisScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          height: 466.v,
                          width: 363.h,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin: EdgeInsets.only(right: 82.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.h, vertical: 18.v),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgGroup12),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 75.v),
                                          Text("Water usage analysis",
                                              style: CustomTextStyles
                                                  .titleMediumRoboto)
                                        ]))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 50.adaptSize,
                                    width: 50.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 62.v, right: 3.h),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray100,
                                        borderRadius:
                                            BorderRadius.circular(25.h)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse6,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 62.v)),
                            _buildSearchMenuRow(context),
                            _buildLineChart(context)
                          ]))),
                  SizedBox(height: 13.v),
                  Text("Resources", style: theme.textTheme.titleMedium),
                  SizedBox(height: 13.v),
                  Divider(
                      color: appTheme.green400, indent: 49.h, endIndent: 34.h),
                  SizedBox(height: 12.v),
                  _buildImageButtonsRow(context)
                ])))));
  }

  /// Section Widget
  Widget _buildSearchMenuRow(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 12.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(top: 13.v),
                          child: CustomSearchView(
                              controller: searchController,
                              hintText: "search here",
                              contentPadding: EdgeInsets.only(left: 23.h)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgMenuGreen40001,
                      height: 35.v,
                      width: 26.h,
                      margin: EdgeInsets.only(left: 17.h, bottom: 14.v))
                ])));
  }

  /// Section Widget
  Widget _buildLineChart(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(right: 3.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text("120LTS", style: theme.textTheme.bodySmall),
                  SizedBox(height: 40.v),
                  Text("100LTS", style: theme.textTheme.bodySmall),
                  SizedBox(height: 41.v),
                  Text("80LTS", style: theme.textTheme.bodySmall),
                  SizedBox(height: 41.v),
                  Text("60LTS", style: theme.textTheme.bodySmall),
                  SizedBox(height: 41.v),
                  Opacity(
                      opacity: 0.4,
                      child: Text("40LTS",
                          style: CustomTextStyles.bodySmallBlack900_1)),
                  SizedBox(height: 41.v),
                  Opacity(
                      opacity: 0.2,
                      child: Text("20LTS",
                          style: CustomTextStyles.bodySmallBlack900)),
                  SizedBox(height: 41.v),
                  Text("0", style: theme.textTheme.bodySmall)
                ]),
                Expanded(
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 6.h, top: 5.v, bottom: 4.v),
                        child: Column(children: [
                          SizedBox(
                              height: 318.v,
                              width: 321.h,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: SizedBox(
                                                height: 317.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 55.h),
                                            child: SizedBox(
                                                height: 317.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 107.h),
                                            child: SizedBox(
                                                height: 317.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: 317.v,
                                            child: VerticalDivider(
                                                width: 1.h, thickness: 1.v))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 107.h),
                                            child: SizedBox(
                                                height: 317.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v)))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 55.h),
                                            child: SizedBox(
                                                height: 317.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v)))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 2.h),
                                            child: SizedBox(
                                                height: 317.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v)))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 51.v),
                                            child: SizedBox(
                                                width: 313.h,
                                                child: Divider()))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 104.v),
                                            child: SizedBox(
                                                width: 313.h,
                                                child: Divider()))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            width: 313.h, child: Divider())),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 107.v),
                                            child: SizedBox(
                                                width: 313.h,
                                                child: Divider()))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 54.v),
                                            child: SizedBox(
                                                width: 313.h,
                                                child: Divider()))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                            width: 313.h, child: Divider())),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: SizedBox(
                                                height: 317.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v,
                                                    color:
                                                        appTheme.black900)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: 313.h,
                                            margin: EdgeInsets.fromLTRB(
                                                4.h, 56.v, 4.h, 60.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 48.h,
                                                vertical: 11.v),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: fs.Svg(ImageConstant
                                                        .imgGroup34),
                                                    fit: BoxFit.cover)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClose,
                                                      height: 8.adaptSize,
                                                      width: 8.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 5.v,
                                                          bottom: 164.v)),
                                                  Spacer(flex: 52),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClose,
                                                      height: 8.adaptSize,
                                                      width: 8.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 145.v,
                                                          bottom: 23.v)),
                                                  Spacer(flex: 23),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClose,
                                                      height: 8.adaptSize,
                                                      width: 8.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 16.v,
                                                          bottom: 152.v)),
                                                  Spacer(flex: 23),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClose,
                                                      height: 8.adaptSize,
                                                      width: 8.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          right: 1.h,
                                                          bottom: 169.v))
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        alignment: Alignment.bottomLeft,
                                        margin: EdgeInsets.only(bottom: 99.v)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(
                                            left: 104.h, top: 51.v)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        alignment: Alignment.bottomRight,
                                        margin: EdgeInsets.only(bottom: 57.v))
                                  ])),
                          SizedBox(
                              height: 1.v,
                              width: 313.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        width: 313.h, child: Divider())),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        width: 313.h,
                                        child:
                                            Divider(color: appTheme.black900)))
                              ]))
                        ])))
              ])),
          SizedBox(height: 2.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text("Monday", style: theme.textTheme.bodySmall),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child:
                            Text("Tuesday", style: theme.textTheme.bodySmall)),
                    Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text("Wednesday",
                            style: theme.textTheme.bodySmall)),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child:
                            Text("Thursday", style: theme.textTheme.bodySmall)),
                    Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child:
                            Text("Friday", style: theme.textTheme.bodySmall)),
                    Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child:
                            Text("Saturday", style: theme.textTheme.bodySmall)),
                    Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text("Sunday", style: theme.textTheme.bodySmall))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildImageButtonsRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 253.v,
            width: 325.h,
            child: Stack(alignment: Alignment.bottomLeft, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup12,
                  height: 251.v,
                  width: 235.h,
                  alignment: Alignment.centerRight),
              CustomElevatedButton(
                  height: 46.v,
                  width: 180.h,
                  text: "BACK",
                  margin: EdgeInsets.only(left: 48.h, bottom: 14.v),
                  buttonStyle: CustomButtonStyles.fillLightBlueA,
                  buttonTextStyle: CustomTextStyles.titleSmallRobotoOnPrimary,
                  onPressed: () {
                    onTapBACK(context);
                  },
                  alignment: Alignment.bottomLeft),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 8.h, top: 52.v),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(2.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgSave)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 12.h, top: 4.v, bottom: 12.v),
                                child: Text("Notifications",
                                    style: theme.textTheme.titleSmall))
                          ]))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(2.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgOffer)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 3.v, bottom: 13.v),
                                child: Text("Ratings",
                                    style: theme.textTheme.titleSmall))
                          ]))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 60.v),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(2.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgMenu)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 12.h, top: 4.v, bottom: 12.v),
                                child: Text("comments",
                                    style: theme.textTheme.titleSmall))
                          ]))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIcon)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 11.h, top: 6.v, bottom: 15.v),
                                child: Text("Tickets",
                                    style: CustomTextStyles.titleSmallRoboto))
                          ])))
            ])));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapBACK(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}
