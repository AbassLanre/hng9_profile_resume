import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng9_profile_resume/model/experience_model.dart';
import 'package:hng9_profile_resume/ui/home.dart';

class ExperienceRow extends StatefulWidget {
  final Experience? experience;
  final double verticalBarSize = 2.0;

  const ExperienceRow({Key? key, this.experience}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ExperienceRowState();
  }
}

class ExperienceRowState extends State<ExperienceRow> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0.h),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Padding(
            padding:  EdgeInsets.only(right: 32.0.w - widget.verticalBarSize / 2),
            child:  Container(
              height: 30.0,
              width: widget.verticalBarSize,
              decoration:  BoxDecoration(
                  shape: BoxShape.rectangle, color: widget.experience!.color),
            ),
          ),
           Expanded(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 Text(
                  widget.experience!.jobTitle.toString(),
                  style:  TextStyle(fontSize: 18.0.sp),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.0.h),
                  child:  Text(
                    widget.experience!.company.toString(),
                    style:  TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.0.h),
                  child:  Text(
                    widget.experience!.description.toString(),
                    style: TextStyle(
                        fontSize: 12.0.sp, textBaseline: TextBaseline.alphabetic),
                  ),
                )
              ],
            ),
          ),
           Padding(
            padding:  EdgeInsets.only(right: 16.0.w, left: 16.0.w),
            child:  Text(
              widget.experience!.date.toString(),
              style:   TextStyle(fontSize: 12.0.sp, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}