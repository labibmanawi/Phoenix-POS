import 'package:flutter/material.dart';
import 'package:testapp/buildlayer.dart';
import 'package:testapp/homepage.dart';
import 'package:testapp/sidebar/sidebar.dart';

class SidebarLayout extends StatelessWidget {
  const SidebarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // HomePage(),
          BuildLayer(),
          SideBar(),
        ],
      ),
    );
  }
}
