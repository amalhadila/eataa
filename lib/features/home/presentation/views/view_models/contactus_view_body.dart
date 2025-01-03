import 'package:eataa/core/theme/color_app.dart';
import 'package:eataa/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ContactusViewBody extends StatelessWidget {
  const ContactusViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'نحن هنا لمساعدتك!',
                style: Styles.textStyle24,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Text(
                'إذا كان لديك أي استفسارات أو اقتراحات، يمكنك التواصل معنا عبر النموذج أدناه:',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'الاسم',
                  floatingLabelStyle: TextStyle(color:ColorApp.primaryColor ),
                  iconColor: ColorApp.primaryColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:BorderSide(color: ColorApp.primaryColor) 
                  ),
                   focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:BorderSide(color: ColorApp.primaryColor) 
                  ),
                  prefixIcon: Icon(Icons.person,color: ColorApp.primaryColor),
                ),
              ),
              SizedBox(height: 15.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'البريد الإلكتروني',
                   floatingLabelStyle: TextStyle(color:ColorApp.primaryColor ),
                  iconColor: ColorApp.primaryColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:BorderSide(color: ColorApp.primaryColor) 
                  ),
                   focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:BorderSide(color: ColorApp.primaryColor) 
                  ),
                  prefixIcon: Icon(Icons.email,color: ColorApp.primaryColor,),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'الرسالة',
                   floatingLabelStyle: TextStyle(color:ColorApp.primaryColor ),
                iconColor: ColorApp.primaryColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:BorderSide(color: ColorApp.primaryColor) 
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:BorderSide(color: ColorApp.primaryColor) 
                  ),
                  prefixIcon: Icon(Icons.message,color: ColorApp.primaryColor),
                ),
                maxLines: 5,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('تم إرسال الرسالة بنجاح!')),
                  );
                },
                child: Text('إرسال',style: Styles.textStyle24.copyWith(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  backgroundColor: ColorApp.secondaryColor2
                ),
              ),
              SizedBox(height: 30.0),
              Divider(),
              SizedBox(height: 10.0),
              Text(
                'أو تواصل معنا عبر:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.phone, color: ColorApp.secondaryColor2, size: 30.0),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.email, color: ColorApp.secondaryColor2, size: 30.0),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.facebook, color: ColorApp.secondaryColor2, size: 30.0),
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