import 'package:eataa/features/home/presentation/manager/cubit/fetch_data_cubit.dart';
import 'package:eataa/features/home/presentation/views/view_models/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchDataCubit(),
      child: const HomeViewBody(),
    );
  }
}
