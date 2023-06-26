// import 'package:flutter/material.dart';

// import 'circle.dart';

// class AddMedicine extends StatelessWidget {
//   final List<String> _medicine = [
//     'Tablet',
//     'Capsule',
//     'Injection',
//     'Syrup',
//     'Powder',
//     'Cream',
//     'Inhaler',
//     'Dropper',
//     'Others',
//   ];

//   AddMedicine({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Add Medicines',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//       ),

//       body: Card(
//         child :Padding(
//         padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start, 
//           children: [

//                Column(
//             crossAxisAlignment: CrossAxisAlignment.start, 
//             children: [
//             //listview
//             const SizedBox(height: 5.0),
//             const Text('What strength is the medicine?'),
//             const SizedBox(height: 5.0),
//             const TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: '1mg',
//               ),
//             ),

//           //listview
//           const SizedBox(height: 5.0),
//           Column(children: [
//             //listview
//             SizedBox(
//               height: 100,
//               child: ListView.builder(
//                 itemCount: _medicine.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return MyCircle(child: _medicine[index]);
//                 },
//               ),
//             )
//           ]),

//           const Column(
//             crossAxisAlignment: CrossAxisAlignment.start, 
//             children: [
//             //listview
//             SizedBox(height: 5.0),
//             Text('What strength is the medicine?'),
//             SizedBox(height: 5.0),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: '1mg',
//               ),
//             ),

//             Column(crossAxisAlignment: CrossAxisAlignment.start, 
//             children: [
//               //listview
//               SizedBox(height: 5.0),
//               Text('Do you need to  take this medicine everyday?'),
//               SizedBox(height: 5.0),
//               Card(child: OnOffIcon() )
              
                
//             ]
            
//             ),

//             SizedBox(height: 5.0),
//             Text('When do you need to take the first dose?'),
//             SizedBox(height: 5.0),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'time',
//               ),
//             ),
//           ]),

//           const SizedBox(height: 5.0),
//           const Text('Almost done. Would you like to;'),
//           const SizedBox(height: 5.0),
//           const TextField(
//             decoration: InputDecoration(
              
//               hintText: 'set treatment duration?',
            
//             ),
//           ), 

//         ]),
//       )
      
//       )
//       )
//     );
//   }
  
//   center(IconData? onOffIcon) {}
// }


// // class MyColum extends StatefulWidget{
// //    const MyColum({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return; 
  
// // }

// //   @override
// //   State<StatefulWidget> createState() {
// //     // TODO: implement createState
// //     throw UnimplementedError();
// //   }
// // }
































// MY MED CARD
// import 'package:flutter/material.dart';


// class MyMedicine extends StatefulWidget {
//   const MyMedicine({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyMedicineState createState() => _MyMedicineState();
// }

// class _MyMedicineState extends State<MyMedicine> {

  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Add Medicines',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: const SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(10.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Card(
//                 child: Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment:CrossAxisAlignment.start,
//                     textBaseline: TextBaseline.alphabetic,
//                     title: Text
                    
                      
//                   )
//                 ),
//               ),
//               SizedBox(height: 10.0),
//               Card(
//                 child: Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Column(
                   
//                   ),
//                 ),
//               ),
              
              
              
//             ]   
//           ),
//         ),
//       )
//         );
      
    
  
//   }
// }
