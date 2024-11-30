import 'dart:ui';

Color hexToColor(String hexCode) {
  String hex = hexCode.replaceFirst('#', ''); // Remove the '#' if present
  return Color(int.parse('FF$hex', radix: 16));
}

const Color cGreen = Color.fromARGB(255, 66, 133, 77);
const Color cRed = Color.fromARGB(255, 222, 45, 45);
const Color cWhite = Color(0xFFffffff);
const Color cBlack = Color(0xFF000000);
const Color cOrange = Color(0xFFF27E21);
const Color cLightBlue = Color(0xFF5B87A0);
const Color cDarkGray = Color(0xFF707070);
const Color cLightGray = Color(0xFFADADAD);
const Color cCardGray = Color(0xFFF1F1F1);
const Color cCream = Color(0xFFFDEEE1);
const Color cDarkCream = Color.fromARGB(255, 227, 189, 156);

//New
const Color cBrown = Color(0xFFED9F2A);
const Color cGolden = Color(0xFFF7C159);
const Color cSilver = Color(0xFFF4F0F0);
const Color cGray = Color(0xFFEBE1E1);

// Trial
const Color cGLight = Color(0xFFF6E2A3);
const Color cGBrown = Color(0xFFBD8936);
const Color cGLBrown = Color(0xFFE0B35A);

const Color cErrorRed = Color.fromARGB(255, 185, 59, 50);

const Color cGradientFirst = Color(0xFFFFD467);
const Color cGradientSecond = Color(0xFFEE9D00);
const Color cBackground = Color(0xFFFDEEE1);

const Color cGreenFont = Color(0xFF57B848);
const Color cRedFont = Color.fromARGB(255, 206, 65, 55);

const Color cBlue = Color(0xFF6688bc);
const Color cBlueLight = Color.fromARGB(255, 212, 228, 253);

const Color cYellow = Color.fromARGB(255, 248, 240, 86);
const Color cYellowLight = Color.fromARGB(255, 249, 247, 202);

const Color cTextFieldBackground = Color(0xFFF6F6F6);
const Color cTextFieldBorder = Color(0xFFB4B4B4);
