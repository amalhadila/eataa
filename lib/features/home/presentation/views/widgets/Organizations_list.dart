import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:eataa/features/home/presentation/views/organizations_details_view.dart';
import 'package:flutter/material.dart';

class OrganizationsList extends StatelessWidget {
  const OrganizationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 10,
      
      itemBuilder: (context, index) {
      return  Card(
        color: ColorApp.secondaryColor2,
        child: ListTile(      
          onTap:  () {
             Navigator.push(context, MaterialPageRoute(builder:(context) => const OrganizationsDetailsView()));
          },     
            title: Text('جمعيّة كافل اليتيم'),
            titleTextStyle: Styles.textStyle18.copyWith(color: Colors.black),
            subtitle: Text('هدفها توفير الرعاية الماديّة و النفسيّة والصحيّة للأيتام فاقدي السند'),
            subtitleTextStyle: Styles.textStyle16.copyWith(color: Colors.black),
          ),
      );
      },
    );
  }
}