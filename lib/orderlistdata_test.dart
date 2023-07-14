import 'package:flutter/material.dart';

class OrderListData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DataListScreen(),
    );
  }
}

class DataListScreen extends StatelessWidget {
  final List<Data> dataList = [
    Data(1, 'Nama 1', 'Kode 001'),
    Data(2, 'Nama 2', 'Kode 002'),
    Data(3, 'Nama 3', 'Kode 003'),
    Data(4, 'Nama 4', 'Kode 004'),
    Data(5, 'Nama 5', 'Kode 005'),
    Data(6, 'Nama 6', 'Kode 006'),
    Data(7, 'Nama 7', 'Kode 007'),
    Data(8, 'Nama 8', 'Kode 008'),
    Data(9, 'Nama 9', 'Kode 009'),
    Data(10, 'Nama 10', 'Kode 010'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data List'),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final data = dataList[index];
          return ListTile(
            title: Text('Nomor: ${data.number}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama: ${data.name}'),
                Text('Kode: ${data.code}'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Data {
  final int number;
  final String name;
  final String code;

  Data(this.number, this.name, this.code);
}
