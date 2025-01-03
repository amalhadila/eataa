import 'package:eataa/features/home/presentation/views/widgets/home_grid.dart';
import 'package:eataa/features/home/presentation/views/widgets/choose_city.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right:16.0,left: 16,top: 24,bottom: 16),
      child: Column(      
        children: [
          ChooseCity(),
          SizedBox(height: 24,),
          Expanded(child: HomeGrid())
        ],
      ),
    );
  }
}