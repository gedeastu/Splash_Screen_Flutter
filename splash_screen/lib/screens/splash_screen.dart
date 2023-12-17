import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen/screens/home.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const Home()
        ),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,overlays: SystemUiOverlay.values
    );
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent, Colors.purpleAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          )
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 0,
              child: Container(
                child: const Icon(
                  Icons.ac_unit_sharp,
                  color: Colors.white,
                  size: 100,
                )
              )
            ),
            const SizedBox(
              height: 10,
            ),
            const Flexible(
              fit: FlexFit.loose,
              flex: 0,
              child: Text(
                "Crystal Lynch",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
              )
            ),
           
          ],
        ),
      ),
    );
  }
}