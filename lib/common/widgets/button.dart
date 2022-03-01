import 'package:flutter/material.dart';
import 'package:wechat/common/style/color.dart';

MaterialButton primaryButton({
  required VoidCallback onPressed,
  required String label,
  required BuildContext context,
}) {
  return MaterialButton(
    onPressed: onPressed,
    color: AppColor.primaryColor,
    splashColor: const Color(0xFFBFEF9B),
    height: 44,
    minWidth: MediaQuery.of(context).size.width,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      label,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

MaterialButton secondaryButton({
  required VoidCallback onPressed,
  required String label,
  required BuildContext context,
}) {
  return MaterialButton(
    onPressed: onPressed,
    color: AppColor.scaffoldBackground,
    height: 44,
    minWidth: MediaQuery.of(context).size.width,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      label,
      style: const TextStyle(
        color: AppColor.primaryText,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

TextButton linkButton({
  required VoidCallback onPressed,
  required String label,
}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(label),
  );
}
