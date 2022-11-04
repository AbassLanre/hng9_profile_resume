import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng9_profile_resume/config.dart';
import 'package:hng9_profile_resume/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      print('Changes');
      setState(() {});
    });
  }

  // void getCurrentAppTheme() async {
  //   DarkThemeProvider().setDarkTheme(await DarkThemeProvider().darkThemePreference.getTheme());
  //   print('main getCurrentApp ${DarkThemeProvider().darkTheme}');
  // }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(

            theme: ThemeData(
                brightness: Brightness.light,
                fontFamily: 'Nunito').copyWith(appBarTheme: const AppBarTheme(

                backgroundColor: Colors.white,
                actionsIconTheme: IconThemeData(color: Colors.black),
                titleTextStyle: TextStyle(color: Colors.black)),),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                fontFamily: 'Nunito'),
          debugShowCheckedModeBanner: false,
          themeMode: currentTheme.currentTheme(),
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}
