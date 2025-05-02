import 'package:eataa/core/constants/asset_images.dart';
import 'package:eataa/features/home/presentation/views/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewmodel extends StatefulWidget {
  const SplashViewmodel({super.key});

  @override
  State<SplashViewmodel> createState() => _SplashViewmodelState();
}

class _SplashViewmodelState extends State<SplashViewmodel> {
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
     Navigator.push(context, MaterialPageRoute(builder:(context) => BottomBar()
       
      ));
    });
  }
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 4,),
            // SvgPicture.asset(AssetImages.logo,width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,fit: BoxFit.fill,),
            Image.asset(AssetImages.splash,width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,fit: BoxFit.fill,),                      
           
        
          ],
        ),
      
    );
  }
}