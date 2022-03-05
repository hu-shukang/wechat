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
  );
}

Widget chatTextField({
  required TextEditingController controller,
  FocusNode? focusNode,
}) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
    ),
    padding: const EdgeInsets.all(6),
    margin: const EdgeInsets.only(top: 8, bottom: 8),
    child: TextField(
      controller: controller,
      decoration: const InputDecoration(
        isDense: true,
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(0),
      ),
      focusNode: focusNode,
      keyboardType: TextInputType.multiline,
      maxLines: null,
    ),
  );
}
