import 'package:eataa/features/home/presentation/views/widgets/Organizations_list.dart';
import 'package:flutter/material.dart';

class OrganizationsViewBody extends StatelessWidget {
  const OrganizationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:24,left: 24,top: 24),
      child: const OrganizationsList(),
    );
  }
}