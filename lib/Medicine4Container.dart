




import 'package:flutter/material.dart';

import 'main.dart';

bool visible4 = false;
String medicine4Details="";
String medicine4="";
String timing4morning="";
String timing4afternoon="";
String timing4night="";

var kM3Button1ColorMorning= Colors.white;
var kM3Text1ColorMorning = Colors.black;
var kM3Button2ColorMorning= Colors.white;
var kM3Text2ColorMorning = Colors.black;
var kM3Button3ColorMorning= Colors.blue;
var kM3Button1ColorAfternoon= Colors.white;
var kM3Text1ColorAfternoon = Colors.black;
var kM3Button2ColorAfternoon= Colors.white;
var kM3Text2ColorAfternoon = Colors.black;
var kM3Button3ColorAfternoon= Colors.blue;
var kM3Button1ColorNight= Colors.white;
var kM3Text1ColorNight = Colors.black;
var kM3Button2ColorNight= Colors.white;
var kM3Text2ColorNight = Colors.black;
var kM3Button3ColorNight= Colors.blue;

TextEditingController Medicine4 = new TextEditingController();
class Medicine4Container extends StatefulWidget {
  const Medicine4Container({Key? key}) : super(key: key);

  @override
  State<Medicine4Container> createState() => _Medicine4ContainerState();
}

class _Medicine4ContainerState extends State<Medicine4Container> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible4,
      child: Container(

        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            decoration: BoxDecoration(
              border:  Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [


                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(

                    controller: Medicine4,
                    onChanged: (String value){
                      medicine4 = ", Medicine 4: "+value;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Medicine 4" ,
                    ),
                  ),
                ),
                SizedBox(height: 15),

                Column(
                  children: [
                    // morning timing selector
                    Row(
                      children: [



                        MaterialButton(
                          shape: kBorderShape,
                          onPressed: (){
                            timing4morning="morning: before meal";

                            setState(() {
                              kM3Button1ColorMorning = Colors.blue;
                              kM3Button2ColorMorning = Colors.white;


                              kM3Text1ColorMorning =Colors.white;
                              kM3Text2ColorMorning=Colors.black;
                            });

                          },


                          child: Text("Before Meal ", style: TextStyle(color: kM3Text1ColorMorning),),
                          color: kM3Button1ColorMorning,


                        ),

                        SizedBox(width: 15,),

                        MaterialButton(
                          minWidth: 25,

                          shape: kBorderShape,

                          color: kSecondaryGreen,






                          onPressed: (){
                            timing4morning = "";
                            setState(() {
                              kM3Button2ColorMorning = Colors.white;
                              kM3Button1ColorMorning = Colors.white;
                              kM3Text2ColorMorning =Colors.black;
                              kM3Text1ColorMorning=Colors.black;
                              kM3Button3ColorMorning=Colors.blue;
                            });


                          },

                        ),
                        SizedBox(width: 15,),

                        MaterialButton(
                          shape: kBorderShape,

                          child: Text("After Meal ", style: TextStyle(color: kM3Text2ColorMorning),),
                          color: kM3Button2ColorMorning,
                          onPressed: (){
                            timing4afternoon="morning: after meal";
                            setState(() {
                              kM3Button2ColorMorning = Colors.blue;
                              kM3Button1ColorMorning = Colors.white;

                              kM3Text2ColorMorning =Colors.white;
                              kM3Text1ColorMorning=Colors.black;
                            });



                          },

                        ),
                      ],
                    ),
// afternoon timing selector
                    Row(
                      children: [
                        MaterialButton(
                          shape: kBorderShape,

                          child: Text("Before Meal ", style: TextStyle(color: kM3Text1ColorAfternoon),),
                          color: kM3Button1ColorAfternoon,
                          onPressed: (){
                            timing4afternoon=", Afternoon: before meal";

                            setState(() {
                              kM3Button1ColorAfternoon = Colors.blue;
                              kM3Button2ColorAfternoon = Colors.white;

                              kM3Text1ColorAfternoon =Colors.white;
                              kM3Text2ColorAfternoon=Colors.black;
                            });

                          },

                        ),
                        SizedBox(width: 15,),
                        MaterialButton(
                          minWidth: 25,
                          color: kSecondaryGreen,
                          shape: kBorderShape,

                          onPressed: (){
                            timing4afternoon = "";
                            setState(() {
                              kM3Button2ColorAfternoon = Colors.white;
                              kM3Button1ColorAfternoon = Colors.white;
                              kM3Text2ColorAfternoon =Colors.black;
                              kM3Text1ColorAfternoon=Colors.black;
                              kM3Button3ColorAfternoon=Colors.blue;
                            });
                          },

                        ),

                        SizedBox(width: 15,),

                        MaterialButton(
                          shape: kBorderShape,

                          child: Text("After Meal ", style: TextStyle(color: kM3Text2ColorAfternoon),),
                          color: kM3Button2ColorAfternoon,
                          onPressed: (){
                            timing4afternoon=", Afternoon: after meal";
                            setState(() {
                              kM3Button2ColorAfternoon = Colors.blue;
                              kM3Button1ColorAfternoon = Colors.white;

                              kM3Text2ColorAfternoon =Colors.white;
                              kM3Text1ColorAfternoon=Colors.black;

                            });



                          },

                        ),
                      ],
                    ),
//night timing selector
                    Row(
                      children: [
                        MaterialButton(
                          shape: kBorderShape,
                          child: Text("Before Meal ", style: TextStyle(color: kM3Text1ColorNight),),
                          color: kM3Button1ColorNight,
                          onPressed: (){
                            timing4night=", Night: before meal";

                            setState(() {
                              kM3Button1ColorNight = Colors.blue;
                              kM3Button2ColorNight = Colors.white;


                              kM3Text1ColorNight=Colors.white;
                              kM3Text2ColorNight=Colors.black;
                            });

                          },

                        ),
                        SizedBox(width: 15,),

                        MaterialButton(
                          minWidth: 25,
                          color:  kSecondaryGreen,
                          shape: kBorderShape,




                          onPressed: (){
                            timing4afternoon = "";
                            setState(() {
                              kM3Button2ColorNight = Colors.white;
                              kM3Button1ColorNight = Colors.white;
                              kM3Text2ColorNight =Colors.black;
                              kM3Text1ColorNight=Colors.black;
                              kM3Button3ColorNight=Colors.blue;
                            });


                          },

                        ),
                        SizedBox(width: 15,),

                        MaterialButton(
                          shape: kBorderShape,
                          child: Text("After Meal ", style: TextStyle(color: kM3Text2ColorNight),),
                          color: kM3Button2ColorNight,
                          onPressed: (){
                            timing4night=", Night: after meal";
                            setState(() {
                              kM3Button2ColorNight = Colors.blue;
                              kM3Button1ColorNight = Colors.white;

                              kM3Text2ColorNight =Colors.white;
                              kM3Text1ColorNight=Colors.black;
                            });



                          },

                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
