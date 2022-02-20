library custom_text;

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final double? size, height, wordSpacing;
  final TextOverflow? textOverflow;
  final Locale? locale;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final List<Shadow>? shadows;
  final EdgeInsets? padding;

  const CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.fontFamily,
      this.size,
      this.fontStyle,
      this.fontWeight,
      this.locale,
      this.textOverflow,
      this.height,
      this.wordSpacing,
      this.shadows,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        style: TextStyle(
            color: color ?? Theme.of(context).textTheme.bodyText1!.color,
            fontFamily: fontFamily,
            fontSize: size ?? 18,
            fontWeight: fontWeight,
            fontStyle: fontStyle ?? FontStyle.normal,
            locale: locale,
            height: height,
            overflow: textOverflow ?? TextOverflow.ellipsis,
            shadows: shadows,
            wordSpacing: wordSpacing),
      ),
    );
  }
}
