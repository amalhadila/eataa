import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:eataa/features/home/data/models/cat_model.dart';
import 'package:eataa/features/home/presentation/manager/cubit/fetch_data_cubit.dart';
import 'package:eataa/features/home/presentation/views/organizations_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganizationsList extends StatelessWidget {
  const OrganizationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchDataCubit, FetchDataState>(
      builder: (context, state) {
        if (state is FetchDataloading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is FetchDatafailure) {
          return Center(child: Text('Error: ${state.errmessage}'));
        }
        if (state is FetchDatasuccess) {
          List<CategoryModel> countries = state.countries;
          if (countries.isEmpty) {
            return const Center(child: Text('No data available'));
          }

          return ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context, index) {
              CategoryModel Charity = countries[index];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  OrganizationsDetailsView(Charity: Charity,),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10,
                    shadowColor: ColorApp.primaryColor,
                    color: ColorApp.secondaryColor2,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0).r,
                      child: Row(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12).r,
                          child: Image.asset(
                            'assets/الايتام.jpg',
                            fit: BoxFit.fill,
                            height: 120.h,
                            width: 110.h,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top:12,bottom:12,left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                              Charity.name??"❌ No categories available",
                            
                            
                                  style: Styles.textStyle18,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Text(
                                Charity.shortDescription??"❌ No categories available",
                                  style: Styles.textStyle16,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              );
            },
          );
        }
        return const Center(child: Text('No data available'));
      },
    );
  }
}
