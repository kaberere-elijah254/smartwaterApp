import 'package:flutter/material.dart';
import 'package:smartapp/core/app_export.dart';
import 'package:smartapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:smartapp/widgets/app_bar/appbar_title_image.dart';
import 'package:smartapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:smartapp/widgets/app_bar/custom_app_bar.dart';
import 'package:smartapp/widgets/custom_elevated_button.dart';
import 'package:smartapp/widgets/custom_search_view.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDashboard(context),
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildDashboard1(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDashboard(BuildContext context) {
    return SizedBox(
      height: 257.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse,
            height: 144.v,
            width: 283.h,
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 112.h,
              margin: EdgeInsets.only(top: 21.v),
              decoration: AppDecoration.outlineBlack9001,
              child: Text(
                "User profile",
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 5.h,
                top: 94.v,
                right: 4.h,
              ),
              decoration: AppDecoration.outlineBlack9002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 163.adaptSize,
                    width: 163.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse4,
                          height: 163.adaptSize,
                          width: 163.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse4,
                          height: 163.adaptSize,
                          width: 163.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 41.v,
                      bottom: 52.v,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.v,
                          width: 168.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  margin: EdgeInsets.only(left: 68.h),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 22.h),
                                  decoration:
                                      AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 6.v),
                                      Text(
                                        "Bonita",
                                        style:
                                            CustomTextStyles.titleMediumMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Name :",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                        SizedBox(
                          height: 30.v,
                          width: 177.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 30.v,
                                  width: 100.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray100,
                                    borderRadius: BorderRadius.circular(
                                      10.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "A/C No:   13147",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 58.v,
                right: 2.h,
              ),
              child: CustomSearchView(
                width: 328.h,
                controller: searchController,
                hintText: "search here",
                alignment: Alignment.topRight,
                contentPadding: EdgeInsets.only(left: 26.h),
              ),
            ),
          ),
          CustomAppBar(
            leadingWidth: 39.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIconBlack900,
              margin: EdgeInsets.only(
                left: 28.h,
                top: 5.v,
                bottom: 10.v,
              ),
            ),
            title: AppbarTitleImage(
              imagePath: ImageConstant.imgIconBlack90019x11,
              margin: EdgeInsets.only(left: 48.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgUser,
                margin: EdgeInsets.symmetric(horizontal: 27.h),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 100.v,
              width: 217.h,
              margin: EdgeInsets.only(bottom: 47.v),
              decoration: BoxDecoration(
                color: appTheme.lightGreen200,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWaterUsageComponent(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 5.h,
          vertical: 28.v,
        ),
        decoration: AppDecoration.outlineBlack9003.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 23.h),
              child: Text(
                "Daily water usage.",
                style: CustomTextStyles.headlineSmallInterBlack900,
              ),
            ),
            SizedBox(height: 32.v),
            Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomElevatedButton(
                    height: 50.v,
                    width: 150.h,
                    text: "5units",
                    margin: EdgeInsets.only(bottom: 3.v),
                    buttonStyle: CustomButtonStyles.fillBlueGray,
                    buttonTextStyle: theme.textTheme.bodyMedium!,
                  ),
                  CustomElevatedButton(
                    height: 50.v,
                    width: 100.h,
                    text: "20lLTs",
                    margin: EdgeInsets.only(
                      left: 14.h,
                      top: 3.v,
                    ),
                    buttonStyle: CustomButtonStyles.fillBlueGray,
                    buttonTextStyle: theme.textTheme.bodyMedium!,
                  ),
                ],
              ),
            ),
            SizedBox(height: 45.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDashboard1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.v),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 18.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 9.v),
                  padding: EdgeInsets.symmetric(horizontal: 11.h),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCart,
                            height: 45.v,
                            width: 50.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              top: 18.v,
                              bottom: 6.v,
                            ),
                            child: Text(
                              "Purchase",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 9.v),
                      SizedBox(
                        width: 154.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 31.v,
                              width: 75.h,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgTelevision,
                                    height: 31.v,
                                    width: 75.h,
                                    radius: BorderRadius.circular(
                                      10.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 4.v),
                                      child: Text(
                                        "buy unit",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 75.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Text(
                                "25 units",
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 17.h,
                    bottom: 8.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 1.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLock,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 22.v,
                                bottom: 11.v,
                              ),
                              child: Text(
                                "New  messages",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Container(
                          height: 15.v,
                          width: 127.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                            borderRadius: BorderRadius.circular(
                              7.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              7.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.83,
                              backgroundColor:
                                  theme.colorScheme.onPrimaryContainer,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 14.h),
                          child: Text(
                            "60% unread",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 78.v),
          Align(
            alignment: Alignment.centerRight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 28.h),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildWaterUsageComponent(context),
                    Spacer(
                      flex: 28,
                    ),
                    Container(
                      height: 50.v,
                      width: 100.h,
                      margin: EdgeInsets.only(
                        top: 41.v,
                        bottom: 132.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(
                          25.h,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 35,
                    ),
                    Container(
                      height: 50.v,
                      width: 100.h,
                      margin: EdgeInsets.only(
                        top: 41.v,
                        bottom: 132.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(
                          25.h,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 35,
                    ),
                    Container(
                      height: 50.v,
                      width: 100.h,
                      margin: EdgeInsets.only(
                        top: 41.v,
                        bottom: 132.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(
                          25.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
