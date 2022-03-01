import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wechat/common/style/color.dart';

Widget inputTextEditWithLabel({
  required String label,
  required TextEditingController controller,
  TextInputType keyboardType = TextInputType.text,
  String? hitText,
  double labelWidth = 80,
  bool isPassword = false,
  bool autoFocus = false,
  double marginTop = 15,
}) {
  return Container(
    height: 44,
    margin: EdgeInsets.only(top: marginTop),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: AppColor.borderColor,
          width: 1,
        ),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: labelWidth,
          child: Text(
            label,
            style: const TextStyle(
              color: AppColor.labelColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Expanded(
          child: TextField(
            autofocus: autoFocus,
            controller: controller,
            keyboardType: keyboardType,
            maxLines: 1,
            autocorrect: false,
            obscureText: isPassword,
            inputFormatters: [
              FilteringTextInputFormatter(
                RegExp('^[a-zA-Z0-9]*'),
                allow: true,
              ),
            ],
            decoration: InputDecoration(
              hintText: hitText,
              hintStyle: const TextStyle(
                color: AppColor.secondaryText,
              ),
              contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              border: InputBorder.none,
            ),
            style: const TextStyle(
              color: AppColor.secondaryText,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
    // child: TextField(
    //   autofocus: autoFocus,
    //   controller: controller,
    //   keyboardType: keyboardType,
    //   decoration: InputDecoration(
    //     hintText: hitText,
    //     contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    //     border: InputBorder.none,
    //   ),
    //   style: const TextStyle(
    //     color: AppColor.primaryText,
    //     fontWeight: FontWeight.w400,
    //     fontSize: 18,
    //   ),
    //   maxLines: 1,
    //   autocorrect: false,
    //   obscureText: isPassword,
    // ),
  );
}
