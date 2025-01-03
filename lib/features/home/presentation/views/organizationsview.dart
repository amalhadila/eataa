import 'package:eataa/core/theme/styles.dart';
import 'package:eataa/features/home/presentation/views/view_models/organizations_view_body.dart';
import 'package:flutter/material.dart';

class Organizationsview extends StatefulWidget {
  const Organizationsview({super.key});

  @override
  State<Organizationsview> createState() => _OrganizationsviewState();
}

class _OrganizationsviewState extends State<Organizationsview> {
  @override
   bool _isSearchActive = false;
       TextEditingController _searchController = TextEditingController();

      String  search_text='';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:( _isSearchActive )
          ? TextField(
            onChanged: (value) {
              setState(() {
                search_text=value;
               
              });
            },
              controller: _searchController,
              style: Styles.textStyle18.copyWith(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                border: InputBorder.none,
              ),
            ):SizedBox(),
            
        actions: [  
              IconButton(onPressed: (){
                setState(() {
              _isSearchActive = !_isSearchActive;
              if (!_isSearchActive) {
                 search_text='';
                _searchController.clear();
              }
            });

              }, icon: Icon(( _isSearchActive )
          ? Icons.close : Icons.search),),
              const SizedBox(width: 10,),
                        
            
         
        ],),
      body:  const OrganizationsViewBody());
  }
}