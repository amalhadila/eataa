import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/features/home/presentation/views/view_models/organizations_details_view_body.dart';
import 'package:flutter/material.dart';

class OrganizationsDetailsView extends StatelessWidget {
  const OrganizationsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorApp.primaryColor,
      iconTheme: IconThemeData(color: Colors.white),),
      body:  const OrganizationsDetailsViewBody());
  }
}