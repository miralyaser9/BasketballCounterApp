import 'package:basketball/cubit/counter_cubit.dart';
import 'package:basketball/cubit/counter_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return
      BlocConsumer <CounterCubit,CounterStates> (

        builder: (context,state){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Center(child: Text("Points Counter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,fontFamily: "Pacifico"),)),
          actions: const [Icon(Icons.sports_basketball_sharp,size: 60,color: Colors.black,)],),

        body:

        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  const Text("Team A",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),

                  ),
                  Text("${BlocProvider.of<CounterCubit>(context).teamA}"

                    ,style: const TextStyle(fontSize: 150,fontWeight: FontWeight.bold,color: Colors.cyanAccent),
                  ),


                  ElevatedButton(onPressed:()
                  {
                    BlocProvider.of<CounterCubit>(context).teamsIncreament(team: 'A', buttonNumber: 1);


                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                        ,minimumSize: const Size(150 , 50)), child:const Text(" Add 1 point",
                    style: TextStyle(color:Colors.black87,fontSize: 19),
                  )
                    ,

                  ),const SizedBox(height: 20,)


                  ,ElevatedButton(onPressed:(){

                    BlocProvider.of<CounterCubit>(context).teamsIncreament(team: 'A', buttonNumber: 2);


                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                        ,minimumSize: const Size(150 , 50)),
                    child:const Text(" Add 2 point",
                      style: TextStyle(color:Colors.black87,fontSize: 19),
                    )
                    ,

                  ),const SizedBox(height: 20,)


                  ,ElevatedButton(
                    onPressed:(){
                      BlocProvider.of<CounterCubit>(context).teamsIncreament(team: 'A', buttonNumber: 3);

                    },style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                      ,minimumSize: const Size(150 , 50)),
                    child:const Text(" Add 3 point",
                      style: TextStyle(color:Colors.black87,fontSize: 19),
                    )
                    ,
                  ),
                ],

                )
                ,const SizedBox(height: 600,
                    child: VerticalDivider(thickness: 3,
                      color: Colors.cyanAccent,indent: 90,endIndent: 100,)),

                Column(children: [
                  const Text("Team B",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),
                  ),Text("${BlocProvider.of<CounterCubit>(context).teamB}",style: const TextStyle(fontSize: 170,fontWeight: FontWeight.bold,color: Colors.cyanAccent),
                  ),


                  ElevatedButton(onPressed:(){
                    BlocProvider.of<CounterCubit>(context).teamsIncreament(team: 'B', buttonNumber: 1);

                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                        ,minimumSize: const Size(150 , 50)), child:const Text(" Add 1 point",
                    style: TextStyle(color:Colors.black87,fontSize: 19),
                  )
                    ,

                  )
                  ,const SizedBox(height: 20,
                  )


                  ,ElevatedButton(onPressed:(){
                    BlocProvider.of<CounterCubit>(context).teamsIncreament(team: 'B', buttonNumber: 2);

                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                        ,minimumSize: Size(150 , 50)), child:const Text(" Add 2 point",
                    style: TextStyle(color:Colors.black87,fontSize: 19),
                  )
                    ,

                  ),SizedBox(height: 20,)


                  ,ElevatedButton(onPressed:(){
                    BlocProvider.of<CounterCubit>(context).teamsIncreament(team: 'B', buttonNumber: 3);
                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                        ,minimumSize: const Size(150 , 50)),
                    child:const Text(" Add 3 point",
                      style: TextStyle(color:Colors.black87,fontSize: 19),
                    )
                    ,
                  ),
                ],
                ),
              ],
            ),const Spacer(flex: 1,),
            ElevatedButton(onPressed:(){
               BlocProvider.of<CounterCubit>(context).teamsIncreament(team: 'reset');



            },style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow
                  ,minimumSize: Size(150 , 50)), child:const Text(" Reset",
              style: TextStyle(color:Colors.black87,fontSize: 19),
            )
              ,

            ),const Spacer(flex: 4,)
          ],
        ),
      );
    },
        listener: (context,state){


    }
    );
  }
}
