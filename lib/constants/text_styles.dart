// Library imports.
import 'package:flutter/material.dart';

// Local imports.
import 'package:knowyourdonor/constants/colors.dart';

TextStyle smallTextStyle() {
  return TextStyle(
    fontFamily: "RobotoSlab",
    color: normalTextColor,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
}

TextStyle mediumTextStyle() {
  return TextStyle(
    fontFamily: "RobotoSlab",
    color: errorTextColor,
    fontSize: 23,
    fontWeight: FontWeight.bold,
  );
}

TextStyle largeTextStyle() {
  return TextStyle(
    fontFamily: "RobotoSlab",
    color: errorTextColor,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}

// Text Styles for use in buttons.
TextStyle buttonTextStyle() {
  return TextStyle(
    fontFamily: "RobotoSlab",
    color: buttonTextColor,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}

// Text Style for AppBar Title.
TextStyle appBarTextStyle() {
  return TextStyle(
    fontFamily: "RobotoSlab",
    color: appBarTitleColor,
    fontSize: 25,
  );
}

// Text Style for use in Home Page Button.
TextStyle homePageButtonTextStyle() {
  return TextStyle(
    fontFamily: "RobotoSlab",
    color: Colors.white,
    letterSpacing: 1,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}

// Text Style for bloodGroup inside Container.
TextStyle bloodGroupTextStyle() {
  return TextStyle(
    fontFamily: "RobotoSlab",
    color: bloodGroupColor,
    fontSize: 23,
    fontWeight: FontWeight.bold,
  );
}

// Text Style for Drawer Header.
TextStyle drawerHeaderTextStyle() {
  return TextStyle(color: headerTextColor,
    fontFamily: "RobotoSlab",
    letterSpacing: 0,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
}

// Text Style for Drawer List Tiles.
TextStyle drawerListTextStyle() {
  return TextStyle(
      fontFamily: "RobotoSlab",
      color: drawerListTextColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
  );
}

// Text Style for showing in Cards.
TextStyle cardTextStyle() {
  return TextStyle(
      fontFamily: "RobotoSlab",
      color: headerColor,
      fontSize: 15,
      fontWeight: FontWeight.bold,

  );
}
