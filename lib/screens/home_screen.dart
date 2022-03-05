import 'package:flutter/material.dart';
import 'package:food_delivery_app/authentication_service.dart';
import '../widgets/category_list.dart';
import '../widgets/bottom_navbar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Delivery App"),
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.orange,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<AuthenticationService>().signOut();
                }, 
                child: const Text("Sign Out")
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavbar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            CategoryList()
          ],
        ),
      )
    );
  }
}