import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseCity extends StatefulWidget {
   ChooseCity({super.key, required this.selectedCity, required this.onCityChanged});
   String? selectedCity;
  final ValueChanged<String?> onCityChanged;
  @override
  State<ChooseCity> createState() => _ChooseCityState();
}

class _ChooseCityState extends State<ChooseCity> {
 

  
  List<String> cities = [
    'فلسطين',
    'مصر',
    'ليبيا',
    'تونس',
    'الجزائر',
    'المغرب',
    'موريتانيا',
    'السودان',
    'السعودية',
    'الإمارات العربية المتحدة',
    'قطر',
    'البحرين',
    'عمان',
    'الكويت',
    'اليمن',
    'الأردن',
    'لبنان',
    'سوريا',
    'الصومال',
    'جيبوتي',
    'جزر القمر',
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          DropdownMenu<String>(
            hintText: cities[1],
            dropdownMenuEntries: cities
                .map((city) => DropdownMenuEntry<String>(
                      value: city,
                      label: city,
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(
                          ColorApp.primaryColor,
                        ),
                        textStyle: WidgetStateProperty.all<TextStyle>(
                          TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ))
                .toList(),
            menuStyle: MenuStyle(
              backgroundColor: WidgetStateProperty.all(
                  ColorApp.backgroundColor.withOpacity(0.9)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20).r,
                ),
              ),
            ),
            textStyle: Styles.textStyle16,
            inputDecorationTheme: InputDecorationTheme(
                labelStyle: Styles.textStyle16,
                hintStyle: Styles.textStyle16,
                filled: true,
                fillColor: ColorApp.primaryColor,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(16).r),
                errorBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(16).r),
                border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(16).r)),
            width: MediaQuery.of(context).size.width,
            trailingIcon: const Icon(
              Icons.arrow_drop_down,
              color: ColorApp.backgroundColor,
            ),
            onSelected: (String? newValue) {
              setState(() {
                widget.onCityChanged(newValue);
                widget.selectedCity = newValue;
  

              });

            },
          ),
        ],
      
    );
  }
}
