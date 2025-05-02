import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:eataa/features/home/presentation/manager/cubit/fetch_data_cubit.dart';
import 'package:eataa/features/home/presentation/views/view_models/organizations_view_body.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Organizationsview extends StatefulWidget {
  const Organizationsview({super.key, required this.category, this.selectedCity});
final String category; 
 final String? selectedCity ;
  @override
  State<Organizationsview> createState() => _OrganizationsviewState();
}

class _OrganizationsviewState extends State<Organizationsview> {
  @override
  bool _isSearchActive = false;
  TextEditingController _searchController = TextEditingController();

  String search_text = '';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Center(
            child: Container(
              height: AppBar().preferredSize.height * .8,
              child: Center(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      search_text = value;
                    });
                  },
                  controller: _searchController,
                  style: Styles.textStyle18,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(style: BorderStyle.none)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(style: BorderStyle.none)),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      onPressed: () {
                        //     setState(() {
                        //   _isSearchActive = !_isSearchActive;
                        //   if (!_isSearchActive) {
                        //      search_text='';
                        //     _searchController.clear();
                        //   }
                        // });
                      },
                      icon: Icon(
                        Icons.search,
                        color: ColorApp.primaryColor,
                      ),
                    ),
                    hintText: 'بحث...',
                    hintStyle: Styles.textStyle16.copyWith(
                        color: ColorApp.primaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: BlocProvider(
          create: (context) => FetchDataCubit()..getCountryData( countryName:widget.selectedCity,category: widget.category),
          child: const OrganizationsViewBody(),
        ));
  }
}
