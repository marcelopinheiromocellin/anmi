import 'package:app_anmi/app/utils/themeUtils.dart';
import 'package:flutter/material.dart';

class ControleButton extends RawMaterialButton {
  ControleButton({
    @required VoidCallback onPressed,
    @required String label,
    Color primaryColor,
    Color highlightColor,
  }) : super(
          onPressed: onPressed,
          child: Container(
            padding: EdgeInsets.all(10),
            height: 60,
            alignment: Alignment.center,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          fillColor: primaryColor?? ThemeUtils.primaryColor,
          highlightColor: highlightColor ?? ThemeUtils.primaryColor,
        );
}
