import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  Widget? child;
  Color? color;
  double? height;
  double? width;
  double? borderRadius;
  EdgeInsetsGeometry? margin;
  EdgeInsetsGeometry? padding;
  Alignment alignment;
  var onTap;
  CustomContainer(
      {this.child,
      this.color,
      this.height,
      this.width,
      this.borderRadius = 30,
      this.margin,
      this.padding,
      this.alignment = Alignment.center,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        margin: margin,
        padding: padding,
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            color: color),
        child: child,
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  CustomText? label;
  String? hintText;
  TextStyle? hintStyle;
  FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.always;
  Color borderColor = Colors.grey;
  double borderRadius = 10;
  TextEditingController controller;
  var onChanged;
  var onSaved;
  var validator;
  bool obSecureText = false;
  CustomTextFormField(
      {this.label,
      this.hintText,
      this.hintStyle,
      this.floatingLabelBehavior = FloatingLabelBehavior.never,
      this.borderColor = Colors.grey,
      this.borderRadius = 10,
      required this.controller,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.obSecureText = false});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      onChanged: onChanged,
      onSaved: onSaved,
      obscureText: obSecureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          label: label,
          // hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          focusColor: Colors.blueGrey,
          //floatingLabelBehavior: floatingLabelBehavior,
          focusedBorder: border(),
          errorBorder: border(),
          enabledBorder: border(),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(borderRadius))),
    );
  }

  static OutlineInputBorder border() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.blueGrey, width: .5),
      borderRadius: BorderRadius.circular(10),
    );
  }
}

class CustomText extends StatelessWidget {
  String? text;
  TextStyle? style;
  TextAlign textAlign = TextAlign.center;
  CustomText({this.text, this.style, this.textAlign = TextAlign.center});
  @override
  Widget build(BuildContext context) {
    return Text(text ?? '',
        style: TextStyle(color: Colors.white), textAlign: textAlign);
  }
}
