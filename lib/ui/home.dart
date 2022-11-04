

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hng9_profile_resume/config.dart';
import 'package:hng9_profile_resume/model/experience_model.dart';
import 'package:hng9_profile_resume/widgets/experience.dart';
import 'package:hng9_profile_resume/widgets/profileHeader.dart';
import 'package:hng9_profile_resume/utils/keys.dart';
import 'package:hng9_profile_resume/widgets/skillsContainer.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
bool darkMode = true;


class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Switch(
          value: darkMode,
          onChanged: (value) {
              setState(() {
                currentTheme.switchTheme();
                darkMode = value;
                debugPrint('switch ${darkMode.toString()}');
              });
          },
          activeTrackColor: Colors.white,
          activeColor: Colors.white,
          inactiveTrackColor: Colors.black,
        ),
        title: Text('PercyAbs',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold)),
        actions: [
          GestureDetector(onTap:()async{
            if(!await launchUrl(Uri.parse(StringKeys.TWITTER_URL))){
              throw 'Could not launch';
            }
          },
              child: Icon(FontAwesomeIcons.twitter,size: 18.r,)),
          SizedBox(width: 20.w,),
          GestureDetector(onTap:()async{
            if(!await launchUrl(Uri.parse(StringKeys.GITHUB_URL))){
              throw 'Could not launch';
            }
          },child: Icon(FontAwesomeIcons.github,size: 18.r,)),
          SizedBox(width: 20.w,),
          GestureDetector(onTap:()async{
            if(!await launchUrl(Uri.parse(StringKeys.LINKEDIN_URL))){
              throw 'Could not launch';
            }
          },child: Icon(FontAwesomeIcons.linkedin,size: 18.r,)),
          SizedBox(width: 20.w,),
          GestureDetector(onTap:()async{
            if(!await launchUrl(Uri.parse(StringKeys.INSTAGRAM_URL))){
              throw 'Could not launch';
            }
          },child: Icon(FontAwesomeIcons.instagram,size: 18.r,)),
          SizedBox(width: 20.w,),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top:40.w,left: 30.0.w,right: 30.0.w,bottom: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileHeader(),
                SizedBox(height: 30.h,),
                Text(StringKeys.DEVELOPER_INFO,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                SizedBox(height: 30.h,),
                Text(StringKeys.SKILLS,style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                  SkillsContainer(svg: 'assets/icons/flutter.svg',skillsName: 'Flutter',),
                  SkillsContainer(svg:'assets/icons/java.svg', skillsName: 'Java',),
                  SkillsContainer(svg:'assets/icons/python.svg',skillsName: 'Python',),
                ],),
                SizedBox(height: 20.h,),
                Center(
                  child: MaterialButton(
                    color: Colors.grey,
                    onPressed: (){
                      showDialog(context: context, builder: (_)=>AlertDialog(
                        title: Text('Why Hire me?',style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.bold),),
                        content: Text(StringKeys.WHY_ME,style:TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                        actions: [
                          MaterialButton(
                            onPressed: ()async{
                              if(!await launchUrl(Uri.parse(StringKeys.CV))){
                              throw 'Could not launch';
                              }
                            },
                            child: Text('My Resume',style:  TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                          ),
                          MaterialButton(
                            onPressed: ()async{
                          Navigator.pop(context);
                            },
                            child: Text('OK',style:  TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ));
                    },
                    child: Text(StringKeys.DEVELOPER_HIRE,style:  TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
                Text(StringKeys.EXPERIENCE,style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold)),
                SizedBox(height: 5.h,),
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: experiences
                      .map((experience) => ExperienceRow(experience: experience))
                      .toList(),
                ),




              ],
            ),
          )),
    );
  }


}
