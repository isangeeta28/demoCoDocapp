import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'schedule_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  var prevention = [
    Prevention(imageData: "assets/images/first1.jpeg", title: "Avoid close contact"),
    Prevention(imageData: "assets/images/second2.jpeg", title: "Clean your hands often"),
    Prevention(imageData: "assets/images/third3.jpeg", title: "Wear a facemask"),
  ];

  var specialist = [
    Specialist(imageData: "assets/images/doctorkit.png", title: "General Physician", color: Color(0xff95e3fa)),
    Specialist(imageData: "assets/images/skeleton.png", title: "Ear Nose & Throat", color: Color(0xfffccac9)),
    Specialist(imageData: "assets/images/doctorkit.png", title: "General Physician", color: Color(0xfff6ad7a)),
    Specialist(imageData: "assets/images/skeleton.png", title: "Ear Nose & Throat", color: Color(0xffffdb7d)),
  ];

  List color = [
    Color(0xff95e3fa),
    Color(0xfffccac9),
    Color(0xfff6ad7a),
    Color(0xffffdb7d)
  ];

  List textcolor = [
    Color(0xff28748c),
    Color(0xffaf7371),
    Color(0xffb45511),
    Color(0xffefb51e)
  ];

  @override
  Widget build(BuildContext context) {
    final double itemHeight = Get.height*0.14;
    final double itemWidth = Get.width*0.22;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 230,
                width: Get.width*0.999,
                color: Color(0xff2549a1),
                padding: EdgeInsets.only(left: 17, right: 15, top: 14),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Welcome",
                        style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text("DB",
                          style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xff2549a1),fontSize: 18),),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/homeimge.png",
                        scale: 0.7,),
                        SizedBox(width: 2,),
                        Padding(
                          padding:  EdgeInsets.only(top: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Do your own test!",
                              style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w700),),
                              SizedBox(height: 7,),
                              Text("How do you feel today?",
                              style: TextStyle(color: Color(0xffc3daf9)),),
                              SizedBox(height: 4,),
                              Text("Take today's test",
                                style: TextStyle(color: Color(0xffc3daf9))),
                              SizedBox(height: 12,),
                              GestureDetector(
                                onTap: (){
                                  Get.to(()=> ScheduleScreen());
                                },
                                child: Container(
                                  height: 30,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(35)
                                  ),
                                  child: Center(
                                      child: Text("Test Now",
                                        style: TextStyle(color: Color(0xff8d95a8),fontSize: 15, fontWeight: FontWeight.w700),)),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(left: 16, right: 13, top: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Prevention",
                     style: TextStyle(color: Color(0xff2549a1),fontWeight: FontWeight.w700, fontSize: 23
                     ),),
                   SizedBox(height: 7,),
                   SizedBox(
                     width: Get.width*0.999,
                     height: 160,
                     child: ListView.builder(
                       shrinkWrap: true,
                         scrollDirection: Axis.horizontal,
                         physics: NeverScrollableScrollPhysics(),
                         itemCount: prevention.length,
                         itemBuilder: (BuildContext context, int index){
                           return Container(
                             width: Get.width*0.3,
                             child: Column(
                               children: [
                                 Image.asset(prevention[index].imageData,
                                   fit: BoxFit.fill,),
                                 SizedBox(
                                   width: Get.width*0.2,
                                   child: Text(prevention[index].title,
                                   textAlign: TextAlign.center,
                                   style: TextStyle(color: Color(0xff2549a1), fontWeight: FontWeight.w700),
                                   maxLines: 2,),
                                 )
                               ],
                             ),
                           );
                         }
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Find the right specialist",
                         style: TextStyle(color: Color(0xff2549a1),fontWeight: FontWeight.w700, fontSize: 23
                         ),),
                       Text("View All",
                         style: TextStyle(color: Color(0xff2549a1),fontWeight: FontWeight.w700, fontSize: 12
                         ),),
                     ],
                   ),
                   SizedBox(height: 12,),
                   GridView.builder(
                       shrinkWrap: true,
                       physics: NeverScrollableScrollPhysics(),
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                         mainAxisSpacing: 18.0,
                         crossAxisSpacing: 18.0,
                         childAspectRatio: (itemWidth/itemHeight)
                       ),
                       itemCount: specialist.length,
                       itemBuilder: (BuildContext context, int gridindex){
                         return Container(
                           decoration: BoxDecoration(
                             color: color[gridindex % color.length],
                             borderRadius: BorderRadius.circular(10)
                           ),
                           child: Column(
                             children: [
                               SizedBox(
                                 height: 120,
                                   child: Image.asset(specialist[gridindex].imageData,
                                   scale: 0.5,)),
                               SizedBox(height: 10,),
                               SizedBox(
                                 width: Get.width*0.17,
                                 child: Text(specialist[gridindex].title,
                                 textAlign: TextAlign.center,
                                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color:textcolor[gridindex % textcolor.length], ),
                                 maxLines: 2,),
                               )
                             ],
                           )
                         );
                       }
                   ),
                   SizedBox(height: 12,),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}

class Prevention {
  String imageData;
  String title;

  Prevention({required this.imageData, required this.title});
}

class Specialist {
  String imageData;
  String title;
  Color color;

  Specialist({required this.imageData, required this.title, required this.color});
}

