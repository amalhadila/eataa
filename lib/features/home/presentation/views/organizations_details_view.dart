import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:eataa/features/home/data/models/cat_model.dart';
import 'package:eataa/features/home/presentation/views/view_models/organizations_details_view_body.dart';
import 'package:flutter/material.dart';

class OrganizationsDetailsView extends StatelessWidget {
  const OrganizationsDetailsView({super.key, required this.Charity});
 final CategoryModel Charity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.white),
       
      centerTitle: true,
      title: Text(
                  Charity.name,
                  style: Styles.textStyle18
                ),),
      body:   OrganizationsDetailsViewBody(Charity: Charity,));
  }
}