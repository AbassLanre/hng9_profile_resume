
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsContainer extends StatelessWidget {
  final String? skillsName;
  final String? svg;
  const SkillsContainer({Key? key, this.skillsName,  this.svg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        color: Colors.white12
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            svg!,
            width: 30.w,
            height: 30.h,
          ),
          Text(skillsName!, style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
