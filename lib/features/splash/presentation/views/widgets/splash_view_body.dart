import 'package:eataa/core/constants/asset_images.dart';
import 'package:eataa/features/home/presentation/views/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 4,),
            Image.asset(AssetImages.logo,width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,fit: BoxFit.fill,),                      
            // Text('WhatsUp',style: Styles.textStyle24,),
           
           
           // const Spacer(),
          //  Center(child: Text('The best chat app of this century',style: Styles.textStyle18,)),
           
           
           // const Spacer(flex: 4,),
        
          ],
        ),
      ),
    );
  }
}