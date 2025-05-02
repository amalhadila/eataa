import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:eataa/features/home/presentation/views/organizationsview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key, this.selectedCity});
 final String? selectedCity ;
  @override
  final List<String> images = const [
  'assets/الايتام.jpg',
  'assets/التعليم.jpg',
 'assets/المساعدات-الطبية.jpg',
  'assets/دعم-الارامل.jpg',
  'assets/الاغاثات-الطارئة.jpg'
];

final List<String> title = const [
  'الأيتام', 
  'التعليم', 
  'المساعدات الطبية', 
  'دعم الأرامل', 
  'الإغاثة الطارئة',
];

final List<String> category = const [
  'الأيتام', 
  'التعليم', 
  'المساعدات الطبية', 
  'مؤسسات دعم الارامل', 
  'مؤسسات الاغاثة الطارئة',
];

  Widget build(BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;

    return  GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8.w, 
        mainAxisSpacing: 12.h, 
         childAspectRatio:.98
         ),
      itemCount: 5,
      
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
             Navigator.push(context, MaterialPageRoute(builder:(context) =>  Organizationsview(category: category[index],selectedCity: selectedCity
             ,)));
          },
          child: Card(
            color: ColorApp.secondaryColor2,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0).r,
                child: ClipRRect(
    borderRadius: BorderRadius.circular(12).r,
     child:AspectRatio(aspectRatio: 1.3,
       child: Image.asset(
              images[index],
              fit: BoxFit.fill,
             //eight: 140.h,
              width: double.infinity,  ),
     ),
        ),
      ),
            SizedBox(height: 8.h),
              Text(
                title[index],
                style: Styles.textStyle18,
              ),
             SizedBox(height: 5.h),
            ],
          ),
          
          ),
        );
        
      },
    );
  }
}