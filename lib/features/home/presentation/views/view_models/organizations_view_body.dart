import 'package:eataa/features/home/presentation/views/widgets/Organizations_list.dart';
import 'package:flutter/material.dart';

class OrganizationsViewBody extends StatelessWidget {
  const OrganizationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: const OrganizationsList(),
    );
  }
}