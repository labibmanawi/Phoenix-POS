import 'package:flutter/material.dart';
import 'package:testapp/addOn.dart';
import 'package:testapp/buildlayer.dart';
import 'package:testapp/homepage.dart';
import 'package:testapp/myradiopage.dart';
import 'package:testapp/options_order.dart';
import 'package:testapp/sidebar/sidebar.dart';
import 'package:testapp/sidebar/sidebar_layout.dart';
import 'package:testapp/testing.dart';
import 'package:testapp/pagination_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 100, 95, 95),
        primaryColor: Colors.white,
      ),
      home: Container(
        width: 500,
        height: 500,
        color: Colors.black,
      ),
    );
  }
}





// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class Drink {
//   final int id;
//   final String name;
//   final String type;
//   final double price;

//   Drink(
//       {required this.id,
//       required this.name,
//       required this.type,
//       required this.price});
// }

// class MyApp extends StatelessWidget {
//   final List<Drink> drinks = [
//     Drink(id: 1, name: 'Minuman 1', type: 'Jenis 1', price: 10.0),
//     Drink(id: 2, name: 'tehs', type: 'Jenis 2', price: 20.0),
//     Drink(id: 3, name: 'Minuman 1', type: 'Jenis 1', price: 10.0),
//     Drink(id: 4, name: 'tehs', type: 'Jenis 2', price: 20.0),
//     Drink(id: 5, name: 'Minuman 1', type: 'Jenis 1', price: 10.0),
//     Drink(id: 6, name: 'tehs', type: 'Jenis 2', price: 20.0),
//     // Tambahkan 49 item lainnya di sini
//     // Contoh: Drink(id: 2, name: 'Minuman 2', type: 'Jenis 2', price: 15.0),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Drink List',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Drink List'),
//         ),
//         body: ListView.builder(
//           itemCount: drinks.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: Text('Informasi Minuman'),
//                       content: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Text('ID: ${drinks[index].id}'),
//                           Text('Nama Minuman: ${drinks[index].name}'),
//                           Text('Jenis Minuman: ${drinks[index].type}'),
//                           Text(
//                               'Harga: ${drinks[index].price.toStringAsFixed(2)}'),
//                         ],
//                       ),
//                       actions: [
//                         TextButton(
//                           child: Text('Tutup'),
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: Card(
//                 child: ListTile(
//                   title: Text(drinks[index].name),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
