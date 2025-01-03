import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/features/home/presentation/views/organizationsview.dart';
import 'package:flutter/material.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key});

  @override
  final List<IconData> icons = const [
  Icons.child_care, 
  Icons.school, 
  Icons.medical_services, 
  Icons.wb_sunny, 
  Icons.local_hospital, 
];

final List<String> title = const [
  'الأيتام', 
  'التعليم', 
  'المساعدات الطبية', 
  'دعم الأرامل', 
  'الإغاثة الطارئة',
];

  Widget build(BuildContext context) {
    return  GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 5,
      
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
             Navigator.push(context, MaterialPageRoute(builder:(context) => const Organizationsview()));
          },
          child: Card(
            color: ColorApp.secondaryColor2,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icons[index], size: 40.0),
              SizedBox(height: 10.0), 
              Text(
                title[index],
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          
          ),
        );
        
      },
    );
  }
}