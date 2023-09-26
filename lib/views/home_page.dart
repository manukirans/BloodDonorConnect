// Library imports.
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


// Local imports.
import 'package:knowyourdonor/constants/text_styles.dart';
import 'package:knowyourdonor/views/donate_blood_form.dart';
import 'package:knowyourdonor/views/request_blood_form.dart';

// Screen for Home Page of the App.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: SvgPicture.asset(
                    'assets/home.svg',
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                
                  height: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RequestBlood(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                          style: BorderStyle.solid
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Request Blood",textAlign: TextAlign.center,
                          style: homePageButtonTextStyle(),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DonateBlood(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Donate Blood",textAlign: TextAlign.center,
                          style: homePageButtonTextStyle(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
