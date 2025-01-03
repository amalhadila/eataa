import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:eataa/features/home/presentation/views/contactus_view.dart';
import 'package:eataa/features/home/presentation/views/home_view.dart';
import 'package:eataa/features/home/presentation/views/policy_view.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
   int currentindex =0;
     bool _isSearchActive = false;
       TextEditingController _searchController = TextEditingController();

      String  search_text='';
   static  List<Widget> _pages =[   
   ];
  @override
    @override
  void initState() {
    super.initState();
    _pages = [
      HomeView(),
      PolicyView(),
      ContactusView(),
     
    ];
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.white,
      appBar:currentindex==0? AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
         title: ( _isSearchActive && currentindex==0)
          ? TextField(
            onChanged: (value) {
              setState(() {
                search_text=value;
                _pages[0] = HomeView();
              });
            },
              controller: _searchController,
              style: Styles.textStyle18.copyWith(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                border: InputBorder.none,
              ),
            ):
            Text('عطاء',style: Styles.textStyle18),

            
        actions: [  
              IconButton(onPressed: (){
                setState(() {
              _isSearchActive = !_isSearchActive;
              if (!_isSearchActive) {
                 search_text='';
                _pages[0] = HomeView();
                _searchController.clear();
              }
            });

              }, icon: Icon(( _isSearchActive && currentindex==0)
          ? Icons.close : Icons.search),),
              const SizedBox(width: 10,),
                        
            
         
        ],
      ):currentindex==1?AppBar(
        automaticallyImplyLeading: false,
        title: Text('سياسة الخصوصية',style: Styles.textStyle18),
        backgroundColor: Colors.white,
      ):AppBar(
        automaticallyImplyLeading: false,
        title: Text('تواصل معنا',style: Styles.textStyle18),
        backgroundColor: Colors.white,
      ),
      body: _pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(  
        backgroundColor: Colors.white,    
         type: BottomNavigationBarType.fixed,
        elevation: 0,
      onTap: (value){        
        setState(() {
          currentindex=value;
        });
      },
      currentIndex: currentindex,
      fixedColor:  ColorApp.primaryColor,
      unselectedItemColor:ColorApp.secondaryColor,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'الرئيسية'),
      BottomNavigationBarItem(icon: Icon(Icons.policy),label: 'الشروط والأحكام'),     
      BottomNavigationBarItem(icon: Icon(Icons.phone),label: 'اتصل بنا'),
    ],
     
    ),
    ) ;
  }
}