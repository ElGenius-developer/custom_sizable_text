library custom_text;

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

enum TextType { autoSized, normal }

class CustomText extends StatefulWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final double? size, height, wordSpacing;
  final TextOverflow? textOverflow;
  final Locale? locale;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final EdgeInsets? padding;
  final TextDecoration? textDecoration;
  final List<Shadow>? shadows;
  final TextType? textType;
  final TextAlign? textAlign;

  const CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.fontFamily,
      this.size,
      this.fontStyle,
      this.padding,
      this.fontWeight,
      this.locale,
      this.textDecoration,
      this.textOverflow,
      this.height,
      this.wordSpacing,
      this.textType = TextType.autoSized,
      this.textAlign,
      this.shadows})
      : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  TextAlign? _textAlign;
  @override
  void initState() {
    widget.textAlign != null
        ? _textAlign = widget.textAlign
        : _textAlign = Localizations.localeOf(context).languageCode == 'ar'
            ? TextAlign.right
            : TextAlign.left;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: widget.textType == TextType.autoSized
          ? AutoSizeText(
              widget.text,
              minFontSize: 8,
              style: _textStyle(context),
              softWrap: true,
              textAlign: widget.textAlign,
            )
          : Text(
              widget.text,
              style: _textStyle(context),
              softWrap: true,
              textAlign: _textAlign,
            ),
    );
  }

  _textStyle(BuildContext context) => TextStyle(
      decoration: widget.textDecoration ?? TextDecoration.none,
      color: widget.color ?? Theme.of(context).textTheme.bodyText1!.color,
      fontFamily: widget.fontFamily,
      fontSize: widget.size ?? 18,
      fontWeight: widget.fontWeight,
      fontStyle: widget.fontStyle ?? FontStyle.normal,
      locale: widget.locale,
      height: widget.height,
      overflow: widget.textOverflow ?? TextOverflow.ellipsis,
      shadows: widget.shadows,
      wordSpacing: widget.wordSpacing);
}
