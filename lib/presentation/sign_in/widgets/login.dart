import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';
import 'package:movies_mod/infrastructure/auth/google_signin.dart';
import 'package:movies_mod/presentation/sign_in/widgets/custom_textfield.dart';

class Login extends StatelessWidget {
  Login({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;
  final AuthClass authClass = AuthClass();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: ktextstyle24,
          ),
          kheight24,
          const CustomTextFormField(
            title: 'E-mail address',
            keyboardType: TextInputType.emailAddress,
          ),
          kheight16,
          const CustomTextFormField(
            title: 'Password',
            keyboardType: TextInputType.visiblePassword,
          ),
          kheight16,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
                fillColor:
                    MaterialStateColor.resolveWith((states) => kblueColor),
              ),
              Text(
                'Remember me',
                style: ktextstyle14xW400,
              ),
              const Spacer(),
              Text(
                'Forgot password?',
                style: ktextstyle14xW400,
              )
            ],
          ),
          kheight10,
          Container(
            height: 51.h,
            decoration: BoxDecoration(
              color: kblueColor,
              borderRadius: BorderRadius.circular(6.r),
            ),
            width: double.infinity,
            child: TextButton(
              child: Text('Login in', style: ktextstyle14xW700),
              onPressed: () {},
            ),
          ),
          kheight16,
          Row(
            children: [
              const Expanded(
                child: Divider(
                  color: kmidgreyColor,
                  thickness: 0.5,
                ),
              ),
              kheight10,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: Text(
                  'OR',
                  style: ktextstyle14xW400.copyWith(color: kmidgreyColor),
                ),
              ),
              const Expanded(
                child: Divider(
                  color: kmidgreyColor,
                  thickness: 0.5,
                ),
              ),
            ],
          ),
          kheight10,
          GestureDetector(
              child: SizedBox(
                height: 60.h,
                width: double.infinity,
                child: Card(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/google_logo.svg',
                        height: 20.h,
                        width: 20.w,
                      ),
                      SizedBox(width: 16.w),
                      Text(
                        'Log in with Google',
                        style: ktextstyle14xW400.copyWith(color: kwhiteColor),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () async {
                await authClass.googleSignIn(context);
              }),
          kheight16,
          Center(
            child: RichText(
              text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: ktextstyle14xW400,
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Sign up',
                        style: ktextstyle14xW400.copyWith(color: kpurpleColor),
                        recognizer: TapGestureRecognizer()..onTap = () {})
                  ]),
            ),
          ),
          SizedBox(height: 44.h),
        ],
      ),
    );
  }
}
