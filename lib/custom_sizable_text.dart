library custom_sizable_text;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

/// [TextType] is an enum that allows you to make text not sizable by change [textType]
enum TextType { autoSized, normal }

/// [CustomText] is a widget that simplifies the text widget and make it flexible and auto sized.

class CustomText extends StatelessWidget {
  /// the String text that will be displayed
  final String text;

  /// - [fontFamily] is the font family of the text. like(Roboto, Poppins).
  final String? fontFamily;

  /// - [color] is the color of the text.
  final Color? color;

  /// - [size] is the font size of the text.
  final double? size;

  /// - [height] is the height of the text.
  final double? height;

  final double? wordSpacing;

  /// - [minFontSize] is the minimum font size of the text.
  final double? minFontSize;

  /// - [maxFontSize] is the maximum font size of the text.
  final double? maxFontSize;

  /// - [textScaleFactor] is the scale factor of the text.
  final double? textScaleFactor;

  /// - [textOverflow] is the overflow of the text - TextOverflow.ellipsis,  TextOverflow.clip,  TextOverflow.fade etc.
  final TextOverflow? textOverflow;

  ///Used to select a font when the same Unicode character can be rendered differently, depending on the locale.
  /// It's rarely necessary to set this property. By default its value is inherited from the enclosing app with Localizations.localeOf(context).
  final Locale? locale;

  /// - [fontWeight] is the weight of the text - FontWeight.bold,  FontWeight.normal etc.
  final FontWeight? fontWeight;

  /// - [fontStyle] is the style of the text - FontStyle.italic,  FontStyle.normal etc.
  final FontStyle? fontStyle;

  /// - [padding] is the padding of the text - space around the text.
  final EdgeInsets? padding;

  /// - [textStyle] is the style of the text like(color, fontSize, fontWeight) etc.
  final TextStyle? textStyle;

  ///[shadows]
  ///used to set shadow for the text
  final List<Shadow>? shadows;

  /// - [textType] is the type of the text - TextType.autoSized,  TextType.normal etc.
  final TextType? textType;

  /// - [textAlign] is the alignment of the text - TextAlign.leftCenter,  TextAlign.rightCenter,  TextAlign.center etc.
  final TextAlign? textAlign;

  /// - [maxLines] is the max lines that text can fit on.
  final int? maxLines;

  /// - [textDirection] is the direction of the text - TextDirection.ltr,  TextDirection.rtl etc.
  final TextDirection? textDirection;

  /// - [presetFontSizes] is the preset font sizes of the text.
  final List<double>? presetFontSizes;

  /// - [textWidthBasis] is the width basis of the text.
  final TextWidthBasis? textWidthBasis;

  const CustomText(this.text,
      {super.key,
      this.color,
      this.fontFamily,
      this.size,
      this.fontStyle,
      this.textStyle,
      this.padding,
      this.fontWeight,
      this.locale,
      this.textOverflow,
      this.height,
      this.wordSpacing,
      this.textType = TextType.autoSized,
      this.textAlign,
      this.shadows,
      this.minFontSize,
      this.maxFontSize,
      this.textScaleFactor,
      this.maxLines,
      this.textDirection,
      this.presetFontSizes,
      this.textWidthBasis});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: textType == TextType.autoSized
          ? AutoSizeText(
              text,
              minFontSize: minFontSize ?? 10,
              maxFontSize: maxFontSize ?? 25,
              maxLines: maxLines,
              presetFontSizes: presetFontSizes,
              textScaleFactor: textScaleFactor,
              overflow: textOverflow,
              textDirection: textDirection ?? TextDirection.ltr,
              style: textStyle ?? _textStyle(context),
              softWrap: true,
              textAlign: textAlign ??
                  (Localizations.localeOf(context).languageCode == 'ar'
                      ? TextAlign.right
                      : TextAlign.left),
            )
          : Text(
              text,
              style: textStyle ?? _textStyle(context),
              softWrap: true,
              overflow: textOverflow,
              textDirection: textDirection,
              maxLines: maxLines,
              textScaler: TextScaler.linear(textScaleFactor ?? 1),
              textWidthBasis: textWidthBasis,
              textAlign: textAlign ??
                  (Localizations.localeOf(context).languageCode == 'ar'
                      ? TextAlign.right
                      : TextAlign.left),
            ),
    );
  }

  _textStyle(BuildContext context) => TextStyle(
      decoration: TextDecoration.none,
      color: color ?? Theme.of(context).textTheme.bodyLarge!.color,
      decorationColor: color ?? Theme.of(context).textTheme.bodyLarge!.color,
      fontFamily: fontFamily,
      fontSize: size ?? 17,
      fontWeight: fontWeight,
      fontStyle: fontStyle ?? FontStyle.normal,
      locale: locale,
      height: height,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      shadows: shadows,
      wordSpacing: wordSpacing);
}
