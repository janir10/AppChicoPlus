import 'package:flutter/material.dart';
import 'package:teste/core/colors.dart';

class AppPrimaryButton extends RaisedButton {
  const AppPrimaryButton(
      {VoidCallback onPressed,
      Widget child,
      EdgeInsetsGeometry padding,
      Key key})
      : super(
          child: child,
          padding: padding,
          onPressed: onPressed,
          key: key,
          color: appPrimaryMaterialColor,
          textColor: Colors.white,
          elevation: 1.0,
        );
}