import 'package:eataa/core/theme/color_app.dart';
import 'package:flutter/material.dart';

class ChooseCity extends StatefulWidget {
  const ChooseCity({super.key});

  @override
  State<ChooseCity> createState() => _ChooseCityState();
}

class _ChooseCityState extends State<ChooseCity> {
  String? selectedCity; 
  List<String> cities = [
    'القاهرة',
    'الإسكندرية',
    'أسوان',
    'الأقصر',
    'الغردقة',
    'شرم الشيخ',
    'المنصورة',
    'طنطا',
  ];
  Widget build(BuildContext context) {
    return  Column(
      children: [
         DropdownButton<String>(
          dropdownColor: Colors.white,
          value: selectedCity,
          hint: Text('اختر مدينة',selectionColor: ColorApp.secondaryColor2,),
          icon: Icon(Icons.arrow_drop_down, color: ColorApp.secondaryColor2),
          iconSize: 20,
          isExpanded: true,
          elevation: 0,
          style: TextStyle(color: Colors.black, fontSize: 16),
          underline: Container(
            height: .5,
            color: ColorApp.primaryColor,
          ),
          onChanged: (String? newValue) {
            setState(() {
              selectedCity = newValue;
            });
          },
          items: cities.map<DropdownMenuItem<String>>((String city) {
            return DropdownMenuItem<String>(
              value: city,
              child: Text(city),
            );
          }).toList(),
        ),
     
    
      ],
    );
  }
}