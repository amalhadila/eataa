import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactusViewBody extends StatelessWidget {
  const ContactusViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              SizedBox(height: 24,),
              Text(
                "مرحباً بك في صفحة التواصل الخاصة بتطبيق 'عطاء'",
                style: Styles.textStyle22,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Text(
                'نسعد دائماً بتواصلك معنا لتقديم الدعم أو الاستفسارات أو أي مقترحات لتحسين تجربتك معنا',
                style:  GoogleFonts.tajawal(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
            
              SizedBox(height: 10),
               Divider(color: ColorApp.primaryColor,thickness: .5,),
              ListTile(
                leading: Icon(Icons.public,size:17 ),
                title: Text(
                "الموقع الالكتروني",
                style:  GoogleFonts.tajawal(fontSize: 14),
              ),trailing:
              GestureDetector(
                onTap: () {
                  
                   launch('https://sapqeg.com/');
                },child: Text(
                  "https://www.sapqeg.com",
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ),
              ),
               SizedBox(height: 5),
               Divider(color: ColorApp.primaryColor,thickness: .5,),
              SizedBox(height: 5),
              ListTile(
                leading: Icon(Icons.mail,size:17 ),
                title: Text(
                "البريد الإلكتروني",
                style:  GoogleFonts.tajawal(fontSize: 14),
              ),trailing:
              GestureDetector(
                onTap: () {
                  
                   launch('mailto:info@sapqeg.com');
                },child: Text(
                  "info@sapqeg.com",
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ),
              ),
              
               Divider(color: ColorApp.primaryColor,thickness: .5,),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.facebook, color: ColorApp.secondaryColor2, size: 30.0),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.instagram, color: ColorApp.secondaryColor2, size: 30.0),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.linkedin, color: ColorApp.secondaryColor2, size: 30.0),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
     
    );
  }
}