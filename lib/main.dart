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
          body: Column (
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
                      )
                    ],
                ),
                ),

              Card(
                child: Text("hi"),
              ),
              GridView.builder(
                itemCount: 4,
                itemBuilder: (context,index){
                  return Card(
                    elevation: 10,
                    child: Image.asset('images/cat.jpg'),
                  );

                }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                // children: List.generate(
                //     6, (index) => Card(
                //   color: Colors.orange,
                //   //child:Image.asset('images/cat.jpg'),
                // ),
                // ),
              ),
            ],
          ),



          // Container(
          //   child: GridView.count(
          //       crossAxisCount: isPortrait ? 2:3,
          //       children: List.generate(
          //           6, (index) => Card(
          //             color: Colors.orange,
          //             child:Image.network('https://play-lh.googleusercontent.com/fWOFhAaXbqYILb7AzCelO2d39HFZtH17suMMsdHPP_6RgfI-jDdx14Sg1fl7D1AaBHVX=w2560-h1440-rw',fit: BoxFit.fill,width: 120,height: 120,),
          //
          //
          //
          //           )
          //
          //       )
          //
          //
          //   ),
          // )




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
