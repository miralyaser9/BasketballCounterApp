import 'package:flutter/material.dart';

void main() {
  runApp( pointscounter());
}

class pointscounter extends StatefulWidget {
  @override
  State<pointscounter> createState() => _pointscounterState();
}

class _pointscounterState extends State<pointscounter> {
  int teamA=0;

  int teamB=0;

  void addonepoint(){
    print("one point added");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Center(child: Text("Points Counter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,fontFamily: "Pacifico"),)),
        actions: [Icon(Icons.sports_basketball_sharp,size: 60,color: Colors.black,)],),

      body:

               Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Text("Team A",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),
                        ),Text("$teamA",style: TextStyle(fontSize: 170,fontWeight: FontWeight.bold,color: Colors.cyanAccent),
                        ),
                      ///////////////////////////////////////////////////////

                      ElevatedButton(onPressed:()
                      {setState(() {
                        teamA++;
                      });
                        }, child:Text(" Add 1 point",
                        style: TextStyle(color:Colors.black87,fontSize: 19),
                      )
                        ,style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                            ,minimumSize: Size(150 , 50)),

                      ),SizedBox(height: 20,)
/////////////////////////////////////////////////////////////

                        ,ElevatedButton(onPressed:(){setState(() {
                          teamA+=2;
                        });}, child:Text(" Add 2 point",
                          style: TextStyle(color:Colors.black87,fontSize: 19),
                        )
                          ,style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                              ,minimumSize: Size(150 , 50)),

                        ),SizedBox(height: 20,)
///////////////////////////////////////////////////////////////

                        ,ElevatedButton(onPressed:(){setState(() {
                          teamA+=3;
                        });}, child:Text(" Add 3 point",
                          style: TextStyle(color:Colors.black87,fontSize: 19),
                        )
                          ,style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                              ,minimumSize: Size(150 , 50)),
                        ),
                      ],

                      )
                      ,SizedBox(height: 600,
                          child: VerticalDivider(thickness: 3,
                            color: Colors.cyanAccent,indent: 90,endIndent: 100,)),

                      Column(children: [
                        Text("Team B",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),
                        ),Text("$teamB",style: TextStyle(fontSize: 170,fontWeight: FontWeight.bold,color: Colors.cyanAccent),
                        ),
                        ///////////////////////////////////////////////////////

                        ElevatedButton(onPressed:(){setState(() {
                          teamB++;
                        });}, child:Text(" Add 1 point",
                          style: TextStyle(color:Colors.black87,fontSize: 19),
                        )
                          ,style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                              ,minimumSize: Size(150 , 50)),

                        )
                        ,SizedBox(height: 20,
                        )
/////////////////////////////////////////////////////////////

                        ,ElevatedButton(onPressed:(){setState(() {
                          teamB+=2;
                        });}, child:Text(" Add 2 point",
                          style: TextStyle(color:Colors.black87,fontSize: 19),
                        )
                          ,style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                              ,minimumSize: Size(150 , 50)),

                        ),SizedBox(height: 20,)
///////////////////////////////////////////////////////////////

                        ,ElevatedButton(onPressed:(){setState(() {
                          teamB+=3;
                        });}, child:Text(" Add 3 point",
                          style: TextStyle(color:Colors.black87,fontSize: 19),
                        )
                          ,style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                              ,minimumSize: Size(150 , 50)),
                        ),
                      ],
                      ),
                    ],
                  ),Spacer(flex: 1,),
                  ElevatedButton(onPressed:(){setState(() {
                    teamA=0;
                    teamB=0;
                  });}, child:Text(" Reset",
                    style: TextStyle(color:Colors.black87,fontSize: 19),
                  )
                    ,style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                        ,minimumSize: Size(150 , 50)),

                  ),Spacer(flex: 4,)
                ],
              ),
            ),




    );
  }
}