import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:eataa/features/home/data/models/cat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganizationsDetailsViewBody extends StatelessWidget {
  const OrganizationsDetailsViewBody({super.key, required this.Charity});
  final CategoryModel Charity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24),
          CircleAvatar(
            radius: 65.r,
            backgroundImage: AssetImage('assets/الايتام.jpg'),
          ),
          SizedBox(height: 20),

          if (Charity.shortDescription != null && Charity.shortDescription.isNotEmpty)
            _buildCard('وصف مختصر', Charity.shortDescription),

          if (Charity.fullDescription != null && Charity.fullDescription.isNotEmpty)
            _buildCard('مجالات العمل', Charity.fullDescription),

          if (Charity.location != null && Charity.location.isNotEmpty)
            _buildCard('الموقع الجغرافي', Charity.location),

          _buildContactCard(Charity),
          
          SizedBox(height: 20),
        ],
      ),
    );
  }

  /// ✅ **دالة لإنشاء الكروت الأساسية**
  Widget _buildCard(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        color: ColorApp.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 10,
        shadowColor: ColorApp.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title, style: Styles.textStyle16semibold),
              SizedBox(height: 10),
              Text(content, style: Styles.textStyle14),
            ],
          ),
        ),
      ),
    );
  }

  /// ✅ **دالة لإنشاء كارت "معلومات الاتصال" مع إخفاء الحقول الفارغة**
  Widget _buildContactCard(CategoryModel Charity) {
    String contactInfo = '';

    if (Charity.contact != null && Charity.contact.isNotEmpty) {
      contactInfo += 'رقم الهاتف: ${Charity.contact}\n';
    }
    if (Charity.email != null && Charity.email.isNotEmpty) {
      contactInfo += 'البريد الإلكتروني: ${Charity.email}\n';
    }
    if (Charity.socialMedia != null && Charity.socialMedia.isNotEmpty) {
      contactInfo += 'الموقع الإلكتروني: ${Charity.socialMedia}\n';
    }

    /// ✅ إذا لم يكن هناك أي بيانات، لا يتم إرجاع الكارت
    if (contactInfo.isEmpty) return SizedBox.shrink();

    return _buildCard('معلومات الاتصال', contactInfo);
  }
}
