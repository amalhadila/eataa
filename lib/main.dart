import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/features/splash/presentation/views/splash_view.dart';
import 'package:eataa/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
     await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 914),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
       home: SplashView(),
       locale: Locale('ar'),
        supportedLocales: [
        Locale('ar'),  
        Locale('en'),  
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        
         scaffoldBackgroundColor:ColorApp.backgroundColor,
         appBarTheme: AppBarTheme(backgroundColor: ColorApp.primaryColor,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8), 
                 bottomRight: Radius.circular(8), ),
          ),)
                
       
      ),     
       
    );});
  }
}
