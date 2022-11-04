import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng9_profile_resume/utils/keys.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100.w,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.w),
            color: Colors.blueGrey.shade200,
            image:const DecorationImage(
              image: AssetImage('assets/images/port.png'),
              fit: BoxFit.cover
            )
          ),
        ),
        SizedBox(width: 15.0.w,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(StringKeys.DEVELOPER_NAME,style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.bold)),
              Text(StringKeys.DEVELOPER_ROLE,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold)),
              SizedBox(height: 4.w,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined,color: Colors.grey,size: 18.r,),
                  SizedBox(width: 4.w,),
                  Text(StringKeys.DEVELOPER_ADDRESS,style: TextStyle(fontSize: 16.sp,color: Colors.grey),),
                ],
              )

            ],
          ),
        )
      ],
    );
  }
}
