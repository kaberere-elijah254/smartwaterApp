import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargePoppins => theme.textTheme.bodyLarge!.poppins;
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.42),
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBlack900Bold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBlack900ExtraBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallGray5003 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray5003,
      );
  static get headlineSmallInterBlack900 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 25.fSize,
      );
  static get headlineSmallInterBlack900Bold =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallffffffff => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Title text style
  static get titleLargeGreen400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green400,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter;
  static get titleLargeInterff000000 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: Color(0XFF000000),
      );
  static get titleLargeInterff09c0fa =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: Color(0XFF09C0FA),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeLightblueA400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightBlueA400,
      );
  static get titleLargeff000000 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF000000),
      );
  static get titleLargeff0895c2 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF0895C2),
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto;
  static get titleSmallRobotoOnPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
