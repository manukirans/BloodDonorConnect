// Library imports.
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// Local imports.
import 'package:knowyourdonor/components/appbar.dart';

class About extends StatelessWidget {
  // Email Launch URI.
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'nihal.t141@gmail.com',
  );

  // URL for Github.
  final String _githubURL = "";

  // URL for Twitter.
  final String _twitterURL = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: "About Us",
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/team_icon.webp'),
              ),
              Text(
                'UPLIFT',
                style: TextStyle (
                  fontFamily: "RobotoSlab",
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'App build in Flutter',
                style: TextStyle (
                  fontFamily: "RobotoSlab",
                  color: Colors.black54,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      launch(_emailLaunchUri.toString());
                    },
                    child: FaIcon(
                      Icons.email,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await canLaunch(_twitterURL)
                          ? await launch(_twitterURL)
                          : Fluttertoast.showToast(
                              msg: "Could not launch twitter",
                            );
                    },
                    child: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await canLaunch(_githubURL)
                          ? await launch(_githubURL)
                          : Fluttertoast.showToast(
                              msg: "Could not launch github",
                            );
                    },
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
