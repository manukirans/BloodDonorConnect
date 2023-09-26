import 'package:flutter/material.dart';
import 'package:uplift/home.dart';
import 'package:uplift/login_screen.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: const [
          FirstPage(),
          SecondPage(),
          Thirdpage(),
          Fourthpage(),
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/main_logo2.jpg'),
            radius: 100,
          ),
          const Text(
            'UPLIFT',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'RaleWay'),
          ),
          const Text(
            'Emergency services at your fingertip',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoginScreen()));
              },
              child: const Text("Skip")),
          const Text(
            '1/4',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/bd_logo.jpg'),
            radius: 80,
          ),
          const Text(
            'Blood   Donation',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'RaleWay'),
          ),
          const Text(
            'Be The Reason for Someone\'\s Heartbeat',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          TextButton(onPressed: () {}, child: const Text("Skip")),
          const Text(
            '2/4',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Thirdpage extends StatelessWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/a_logo.jpg'),
            radius: 80,
          ),
          const Text(
            'Ambulance Services',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'RaleWay'),
          ),
          const Text(
            'Get Connected To The Nearby Ambulance Services',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          TextButton(onPressed: () {}, child: const Text("Skip")),
          const Text(
            '3/4',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Fourthpage extends StatelessWidget {
  const Fourthpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/c_logo.jpg'),
          radius: 80,
        ),
        const Text(
          'Counselling Services',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'RaleWay'),
        ),
        const Text(
          'We Are Here To Help Others To Help Themselves and to Help them Grow in the way they Choose.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        TextButton(onPressed: () {}, child: const Text("Skip")),
        const Text(
          '4/4',
          textAlign: TextAlign.center,
        )
      ],
    ));
  }
}
