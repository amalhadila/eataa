import 'package:eataa/core/constants/asset_images.dart';
import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:eataa/features/home/presentation/views/contactus_view.dart';
import 'package:eataa/features/home/presentation/views/home_view.dart';
import 'package:eataa/features/home/presentation/views/policy_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      appBar:currentindex==0? AppBar(
       //shadowColor: ColorApp.primaryColor,
        automaticallyImplyLeading: false,
      
         title:
            Text('عطاء',style: Styles.textStyle18),

            
        actions: [  
          Image.asset(AssetImages.logo,
           width: AppBar().preferredSize.height,  
          height: AppBar().preferredSize.height,
          fit: BoxFit.contain,),                   
            
         
        ],
      ):currentindex==1?AppBar(
        automaticallyImplyLeading: false,
       
        title: Text('سياسة الخصوصية',style: Styles.textStyle18),
         actions: [  
          Image.asset(AssetImages.logo,
           width: AppBar().preferredSize.height,  
          height: AppBar().preferredSize.height,
          fit: BoxFit.contain,),                   
            
         
        ],
       // backgroundColor: Colors.white,
      ):AppBar(
        automaticallyImplyLeading: false,
       
        title: Text('تواصل معنا',style: Styles.textStyle18),
         actions: [  
          Image.asset(AssetImages.logo,
           width: AppBar().preferredSize.height,  
          height: AppBar().preferredSize.height,
          fit: BoxFit.contain,),                   
            
         
        ],
        //backgroundColor: Colors.white,
      ),
      body: _pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(  

        backgroundColor: ColorApp.backgroundColor,    
         type: BottomNavigationBarType.fixed,
         
        elevation: 10,
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