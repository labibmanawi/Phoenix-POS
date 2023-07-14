// import 'package:flutter/material.dart';

// class MyRadioPage extends StatefulWidget {
//   @override
//   _MyRadioPageState createState() => _MyRadioPageState();
// }

// class _MyRadioPageState extends State<MyRadioPage> {
//   late int selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Radio Button Example'),
//       ),
//       body: Column(
//         children: [
//           RadioListTile(
//             title: Text('Option 1'),
//             value: 1,
//             groupValue: selectedValue,
//             onChanged: (value) {
//               setState(() {
//                 selectedValue = value!;
//               });
//             },
//             activeColor: Colors
//                 .green, // Ganti warna yang diinginkan saat radio button di klik
//           ),
//           RadioListTile(
//             title: Text('Option 2'),
//             value: 2,
//             groupValue: selectedValue,
//             onChanged: (value) {
//               setState(() {
//                 selectedValue = value!;
//               });
//             },
//             activeColor: Colors
//                 .green, // Ganti warna yang diinginkan saat radio button di klik
//           ),
//           RadioListTile(
//             title: Text('Option 3'),
//             value: 3,
//             groupValue: selectedValue,
//             onChanged: (value) {
//               setState(() {
//                 selectedValue = value!;
//               });
//             },
//             activeColor: Colors
//                 .green, // Ganti warna yang diinginkan saat radio button di klik
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class RadioButtonList extends StatefulWidget {
  @override
  _RadioButtonListState createState() => _RadioButtonListState();
}

class _RadioButtonListState extends State<RadioButtonList> {
  int _selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: 1,
          groupValue: _selectedRadio,
          activeColor: Colors.white,
          title: Text(
            'Takeaway',
            style: TextStyle(
                color: _selectedRadio == 1 ? Colors.white : Colors.black),
          ),
          onChanged: (value) {
            setState(() {
              _selectedRadio = value!;
            });
          },
          selected: _selectedRadio == 1,
          tileColor: _selectedRadio == 1 ? Colors.purple : null,
        ),
        RadioListTile(
          value: 2,
          groupValue: _selectedRadio,
          activeColor: Colors.white,
          title: Text(
            'Dine In',
            style: TextStyle(
                color: _selectedRadio == 2 ? Colors.white : Colors.black),
          ),
          onChanged: (value) {
            setState(() {
              _selectedRadio = value!;
            });
          },
          selected: _selectedRadio == 2,
          tileColor: _selectedRadio == 2 ? Colors.purple : null,
        ),
        RadioListTile(
          value: 3,
          groupValue: _selectedRadio,
          activeColor: Colors.white,
          title: Text(
            'Ojol',
            style: TextStyle(
                color: _selectedRadio == 3 ? Colors.white : Colors.black),
          ),
          onChanged: (value) {
            setState(() {
              _selectedRadio = value!;
            });
          },
          selected: _selectedRadio == 3,
          tileColor: _selectedRadio == 3 ? Colors.purple : null,
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Button Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Radio Button Example')),
        body: Center(
          child: RadioButtonList(),
        ),
      ),
    );
  }
}
