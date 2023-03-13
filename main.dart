import 'package:flutter/material.dart';

void main() {
 runApp(const MyApp());
}


class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);
 @override
 MyAppState createState() {
   return MyAppState();
 }
}


class MyAppState extends State<MyApp> {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Hello App',
     home: Scaffold(
       appBar: AppBar(
           leading: const FlutterLogo(),
           backgroundColor: Colors.blueGrey,
           title: const Text('Quiz Flutter'),
           actions: const <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
       body:  
       Center(
         child: ListView(children: [
            // CONTAINER DROPDOWN
            Container( 
                decoration: BoxDecoration(border: Border.all()),
                padding: const EdgeInsets.all(14), 
                child: const Text('1 Januari 2023', textAlign: TextAlign.center ,
                style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red))),
            
            // CONTAINER KETERANGAN DAN ICON
            Container( 
                decoration: BoxDecoration(border: Border.all()),
                padding: const EdgeInsets.all(14),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, 
                  children: [
                      // CONTAINER CAR ICON

                      
                      Container(
                          decoration: const BoxDecoration(),
                          // ignore: prefer_const_literals_to_create_immutables
                          child: Stack(children: [
                             const Icon(
                                Icons.car_repair,
                                color: Colors.black,
                                size: 30.0,  
                                
                              ),
                              const Spacer(),
                            const Text('10 km ; 20 jam, 30 menit', 
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  )
                          ]),
                          ),

                      // CONTAINER WALK ICON 
                      Container(
                        decoration: const BoxDecoration(),
                          // ignore: prefer_const_literals_to_create_immutables
                          child: Stack(children: [
                             const Icon(
                              Icons.directions_walk,
                              color: Colors.black,
                              size: 30.0,
                            ),
                              const Spacer(),
                            const Text('10 km ; 20 jam, 30 menit', 
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  )
                          ]),
                          ),
                      
                      // CONTAINER BIKE ICON
                      Container(
                          decoration: const BoxDecoration(),
                          // ignore: prefer_const_literals_to_create_immutables
                          child: Stack(children: [
                             const Icon(
                              Icons.electric_bike,
                              color: Colors.black,
                              size: 30.0,
                            ),
                              const Spacer(),
                            const Text('10 km ; 20 jam, 30 menit', 
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  )
                          ]),
                          ),
                  ]
                    ),
                  ),
            
            // CARD WALKING
            Card( 
                child: ListTile(
                    onTap: () {},
                    leading: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    trailing: const Icon(Icons.more_vert),
                    title: const Text('Walking'),
                    subtitle: const Text("3 km"),
                    tileColor: Colors.white70
                  )
                ),
            
            // CARD DRIVING
            Card( 
                child: ListTile(
                    onTap: () {},
                    leading: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    trailing: const Icon(Icons.more_vert),
                    title: const Text('Driving'),
                    subtitle: const Text("10 km"),
                    tileColor: Colors.white70
                  )
                )
          ]), 
       ),
     ),
   );
 }
}




class ButtonNamaKelompok extends StatelessWidget {
 const ButtonNamaKelompok({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  return IconButton(
     icon: const Icon(Icons.account_circle_rounded),
     onPressed: () {
       // icon account di tap
       showDialog<String>(
         context: context,
         builder: (BuildContext context) => AlertDialog(
           title: const Text('Kelompok 19 - Kelas Senin 07.00'),
           content: const Text('Adinda Salsabilla (adinsals@upi.edu) ; Farah Balqist (farahbalqist@upi.edu)'),
           actions: <Widget>[
             TextButton(
               onPressed: () => Navigator.pop(context, 'OK'),
               child: const Text('OK'),
             ),
           ],
         ),
       );
     },
   );
 }
}


class ButtonPerjanjian extends StatelessWidget {
 const ButtonPerjanjian({Key? key}) : super(key: key);


 @override
 Widget build(BuildContext context) {
   return IconButton(
     icon: const Icon(Icons.access_alarm_rounded),
     onPressed: () {
       // icon setting ditap
       const snackBar = SnackBar(
         duration: Duration(seconds: 20),
         content: Text('Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
       );
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
     },
   );
 }
}