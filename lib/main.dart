import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive app',
      home: HomeResponsive(),
    );
  }
}

class HomeResponsive extends StatefulWidget {
  @override
  State<HomeResponsive> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeResponsive> {

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context, orientation){
          final isPortrait = orientation == Orientation.portrait;

          return Scaffold(
            appBar: AppBar(
              title: const Text('Profile'),
            ),

            body: MediaQuery.of(context).orientation == Orientation.portrait
            ?SingleChildScrollView(
              child: Column (
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Center (
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 200,
                        backgroundImage:AssetImage('images/cat.jpg'),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text("John Doe",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(left: 7,right: 3),
                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),

                      Wrap(
                        runSpacing: 8.0,
                        spacing: 8.0,
                        children: [
                          Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 130,height: 130,),
                          Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 130,height: 130,),
                          Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 130,height: 130,),
                          Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 130,height: 130,),
                          Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 130,height: 130,),
                          Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 130,height: 130,),


                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),

          )

            :

            SingleChildScrollView(
              child: Row (
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 140,
                            backgroundImage:AssetImage('images/cat.jpg'),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 20)),
                      ],
                    ),
                  Container(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text("John Doe",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",style: TextStyle(fontSize: 15),),
                        Padding(padding: EdgeInsets.only(top: 10)),

                        Wrap(
                          runSpacing: 8.0,
                          spacing: 8.0,
                          children: [
                            Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 100,height: 100,),
                            Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 100,height: 100,),
                            Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 100,height: 100,),
                            Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 100,height: 100,),
                            Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 100,height: 100,),
                            Image.asset('images/cat.jpg',fit: BoxFit.fill,width: 100,height: 100,),


                          ],
                        ),
                      ],
                    ),
                  ),



                ],
              ),

            )




          );


        }

      // appBar: AppBar(
      //   title: const Text('Profile'),
      // ),
      // body: MediaQuery.of(context).orientation == Orientation.portrait
      //     ?Container(
      //   color: Colors.blue,
      //   child: const Center(child: Text("Portrait"),),
      // )
      //     :
      // Container(
      //   color: Colors.green,
      //   child: const Center(child: Text("Landscape"),),
      // )

    );
  }
}
