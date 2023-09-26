import 'package:flutter/material.dart';
import 'package:uplift/home.dart';
import 'package:uplift/main.dart';

class Donation extends StatelessWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Donation",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'RaleWay'),
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          PopupMenuButton(itemBuilder: (context) {
            return [
               PopupMenuItem<int>(
                value: 0,
                child: Text(
                  "My Account",
                  style: Theme.of(context).textTheme.bodyText1
                ),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text("Settings",
                style: Theme.of(context).textTheme.bodyText1
                ),
              ),
            PopupMenuItem<int>(
                value: 2,
                child: Text("Logout",
                style: Theme.of(context).textTheme.bodyText1
                ),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Main()));
              //  print("My account menu is selected.");
            } else if (value == 1) {
              //  print("Settings menu is selected.");
            } else if (value == 2) {
              //  print("Logout menu is selected.");
            }
          }),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          onPressed: () {Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()));},
        ),
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              fixedSize: const Size(320, 90),
            ), // NEW
            onPressed: () {},
            child: const Text(
              'Need',
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'RaleWay',
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              fixedSize: const Size(320, 90), // NEW
            ),
            onPressed: () {},
            child: const Text(
              'Donate',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'RaleWay',
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
