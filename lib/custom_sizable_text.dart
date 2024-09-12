library custom_sizable_text;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

enum TextType { autoSized, normal }

class CustomText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final double? size,
      height,
      wordSpacing,
      minFontSize,
      maxFontSize,
      textScaleFactor;
  final TextOverflow? textOverflow;
  final Locale? locale;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final TextDecoration? textDecoration;
  final List<Shadow>? shadows;
  final TextType? textType;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextDirection? textDirection;

  final List<double>? presetFontSizes;

  final TextWidthBasis? textWidthBasis;
  
  const CustomText(
    this.text,
      {super.key,
      this.color,
      this.fontFamily,
      this.size,
      this.fontStyle,
      this.textStyle,
      this.padding,
      this.fontWeight,
      this.locale,
      this.textDecoration,
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
      decoration: textDecoration ?? TextDecoration.none,
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
