import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleScreen extends StatelessWidget {
  ScheduleScreen({Key? key}) : super(key: key);

  var weekdays = [
  Weekdays(weekday: "Mon", day: "20"),
    Weekdays(weekday: "Tue", day: "21"),
    Weekdays(weekday: "Wed", day: "22"),
    Weekdays(weekday: "Thu", day: "23"),
    Weekdays(weekday: "Fri", day: "24"),
    Weekdays(weekday: "Sat", day: "25"),
  ];
  var morning = [
    Morning(time: "10:00 AM",),
    Morning(time: "11:00 AM", ),
    Morning(time: "12:00 PM",),
  ];
  var afternoon = [
    AfterNoon(time: "01:00 PM",),
    AfterNoon(time: "02:00 PM", ),
    AfterNoon(time: "03:00 PM", ),
    AfterNoon(time: "04:00 PM", ),
  ];

  var evening = [
    Evening(time: "05:00 PM",),
    Evening(time: "06:00 PM",),
    Evening(time: "07:00 PM", ),
    Evening(time: "08:00 PM", ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading:  Padding(
            padding:  EdgeInsets.only(left: 5),
            child: IconButton(
              onPressed: (){
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios,
                color: Color(0xff2549a1),),
            ),
          ),
          title: Column(
            children: [
              Text("Dr. Laura Alexandra",
                style: TextStyle(color: Color(0xff2549a1), fontWeight: FontWeight.w700),),
            ],
          ),
          leadingWidth: 25,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 42),
              child: Text("MRCGP(INT), MBBS, DNB",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),),
            ),
            SizedBox(height: 20,),
            Container(
              color: Color(0xfff0f0f0),
              height: 150,
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Choose your slot",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: Get.width*0.999,
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: weekdays.length,
                        itemBuilder: (BuildContext context, int index){
                          return Container(
                            height: 50,
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(weekdays[index].weekday,
                                style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xff7f7f7f)),),
                                Text(weekdays[index].day,
                                    style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xff7f7f7f)))
                              ],
                            ),
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 18, right: 10,top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // for morning time slot
                  Text("Morning",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700, color: Color(0xff757575)),),
                  SizedBox(height: 14,),
                  SizedBox(
                    height: 30,
                    width: Get.width*0.999,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: morning.length,
                        itemBuilder: (BuildContext context, int index){
                          return Container(
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.grey.shade300)
                            ),
                            child: Center(
                                child: Text(morning[index].time,
                                style: TextStyle(color: Color(0xff9a9a9a), fontWeight: FontWeight.bold),)),
                          );
                        }, separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
                    ),
                  ),
                  SizedBox(height: 35,),

                  // for afternoon time slot
                  Text("Afternoon",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700, color: Color(0xff757575)),),
                  SizedBox(height: 14,),
                  SizedBox(
                    height: 30,
                    width: Get.width*0.999,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: afternoon.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.grey.shade300)
                          ),
                          child: Center(
                              child: Text(afternoon[index].time,
                                style: TextStyle(color: Color(0xff9a9a9a), fontWeight: FontWeight.bold),)),
                        );
                      }, separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
                    ),
                  ),
                  SizedBox(height: 35,),


                  //for evening time slot
                  Text("Evening",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700, color: Color(0xff757575)),),
                  SizedBox(height: 14,),
                  SizedBox(
                    height: 30,
                    width: Get.width*0.999,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: evening.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.grey.shade300)
                          ),
                          child: Center(
                              child: Text(evening[index].time,
                                style: TextStyle(color: Color(0xff9a9a9a), fontWeight: FontWeight.bold),)),
                        );
                      }, separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
                    ),
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Weekdays {
  String weekday;
  String day;

  Weekdays({required this.weekday, required this.day});
}
class Morning {
  String time;

  Morning({required this.time,});
}

class AfterNoon {
  String time;

  AfterNoon({required this.time, });
}

class Evening {
  String time;

  Evening({required this.time,});
}
