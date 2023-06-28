import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final TextInputType keyboardType;
  const CustomTextFormField({
    super.key,
    required this.title,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: title == 'Password' ? true : false,
      keyboardType: keyboardType,
      style: ktextstyle14xW400,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 24.w, top: 18.h, bottom: 16.h),
          fillColor: kdarkgreyblueColor,
          filled: true,
          hintText: title,
          hintStyle: ktextstyle14xW400,
          suffixIcon: Visibility(
            visible: title == 'Password' ? true : false,
            child: Icon(
              Icons.visibility_off_outlined,
              size: 24.w,
            ),
          ),
          suffixIconColor: kgreyColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide.none,
          )),
    );
  }
}
