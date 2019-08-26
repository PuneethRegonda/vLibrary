import 'package:flutter/material.dart';
import 'package:vlibrary1/splashScreen.dart';

// import 'package:vlibrary1/loading.dart';
// import 'package:vlibrary1/popup.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SplashScreen(),
        ),
    );
  }
}
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String scannedText="";
//   String sai="Nothing is Scanned";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text("vLibrary"),
//         ),
//         body: MainScreen()
//       ),
//     );
//   }
//   Future scan() async{
//       scannedText=await FlutterBarcodeScanner.scanBarcode("#004297", "cancel",true);
//       setState(() {
//         sai=scannedText;
//       });
//   }
// }
