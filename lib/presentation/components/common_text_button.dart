import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  const CommonTextButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.contentPadding = const EdgeInsets.all(10.0),
    this.shape,
    this.textStyle,
    this.focusNode,
    super.key,
  });

  final String text;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final FocusNode? focusNode;
  final Function() onPressed;
  final EdgeInsetsGeometry? contentPadding;
  final OutlinedBorder? shape;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      focusNode: focusNode,
      style: TextButton.styleFrom(
        shape: shape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: backgroundColor,
        padding: contentPadding,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle ??
            TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
      ),
    );
  }
}
