import 'package:democodocapp/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2549a1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Get.width*0.999,
                height: 380,
                decoration: BoxDecoration(
                    color: Color(0xff2549a1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )
                ),
                child: Image.asset("assets/images/docimage.jpeg",
                fit: BoxFit.fill,),
              ),
              SizedBox(height: 18,),
              Text("Doctor's Helpline",
              style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),),
              SizedBox(height: 20,),
              SizedBox(
                width: Get.width*0.85,
                child: Text("The tech helpline for Covid-19. Rather than rushing to the doctor or healthcare center, we can help remotely get a doctotr",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff5a7ac6),fontWeight: FontWeight.w900,
                fontSize: 16),),
              ),
              SizedBox(height: 22,),
              GestureDetector(
                onTap: (){
                  Get.off(()=> WelcomeScreen());
                },
                child: Container(
                  height: 45,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)
                  ),
                  child: Center(
                      child: Text("Get Started",
                        style: TextStyle(color: Color(0xff8d95a8),fontSize: 18, fontWeight: FontWeight.w700),)),
                ),
              ),
              SizedBox(height: 27,),
              Text("Powered By",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 19),),
              SizedBox(height: 9,),
              Image.asset("assets/images/logimage.jpeg")
            ],
          ),
        ),
      ),
    );
  }
}
