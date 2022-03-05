import 'package:flutter/material.dart';

Widget avatar({
  required double size,
  required String src,
  String? tip,
}) {
  var imgSize = size - 10;
  return SizedBox(
    height: size,
    width: size,
    child: Stack(
      children: [
        Positioned(
          top: 5,
          right: 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              src,
              fit: BoxFit.cover,
              height: imgSize,
              width: imgSize,
            ),
          ),
        ),
        tip != null
            ? Positioned(
                top: 3,
                right: 0,
                child: Container(
                  child: Text(
                    tip,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  alignment: const Alignment(0, 0),
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    ),
  );
}
