import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/features/home/presentation/views/widgets/home_grid.dart';
import 'package:eataa/features/home/presentation/views/widgets/choose_city.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  String? selectedCity = 'مصر'; // القيمة الافتراضية
  void updateSelectedCity(String? newCity) {
    setState(() {
      selectedCity = newCity; // تحديث القيمة
    });
  }

  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right:16.0,left: 16).r,
      child: Column(      
        children: [
          SizedBox(height: 24.h,),
          ChooseCity(
            selectedCity: selectedCity,
          onCityChanged: updateSelectedCity, 
          ),
          SizedBox(height: 24.h,),
          Expanded(child: HomeGrid(selectedCity: selectedCity,))
        ],
      ),
    );
  }
}