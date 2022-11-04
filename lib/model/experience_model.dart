import 'package:flutter/material.dart';

class Experience {
  final String? jobTitle;
  final String? company;
  final String? date;
  final Color? color;
  final bool? active;
  final String? description;

  Experience(
      {this.jobTitle,
        this.company,
        this.date,
        this.color,
        this.active,
        this.description});
}

List<Experience> experiences = [
  Experience(
      jobTitle: 'Flutter Developer',
      company: 'BNB',
      date: '2022',
      color: Colors.orange,
      active: true,
      description: '- Translation of UI/UX designs to code (With flutter) \n\n'
          '- Integration of Firebase Cloud Firestore in the mobile applications \n\n'
  '-Modifying mobile applications in line with Product requirements \n\n'
  ),
  Experience(
      jobTitle: 'Graduate Engineering Trainee',
      company: 'Lagos Metropolitan Area Transport Authority',
      date: '2022',
      color: Colors.orange,
      active: true,
      description:
      '- Supervision of contractors during the construction of new rail track systems \n\n'
          '- Implementing Structural designs using Revit \n\n'),
  Experience(
      jobTitle: 'Mobile Developer',
      company: 'LampnetS',
      date: 'May - Oct. 2022',
      color: Colors.cyan,
      active: false,
      description:
      '- Revamped an old codebase to fit current product designs \n\n'
          '- Integration of google API for live tracking applications \n\n'
  '- Deployed mobile applications to play store \n\n'
  '- Developing and maintenance of UIU designs for mobile screens using flutter framework \n\n'),

];