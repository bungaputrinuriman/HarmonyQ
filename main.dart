import 'package:flutter/material.dart';
import 'package:project/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double progressValue = 0.0;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false; // Set isLoading menjadi false saat loading selesai
        progressValue = 1.0; // Set nilai progress ke 1 saat loading selesai
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomePage(data: null),
          ),
        );
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Tampilkan logo di sini
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: screenHeight * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
      AnimatedContainer(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 5.0,
        duration: Duration(seconds: 3),
        curve: Curves.linear,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2F69F6),
              Color(0xFF631ED0),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.0, progressValue],
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: LinearProgressIndicator(
          backgroundColor: Colors.transparent,
          valueColor: AlwaysStoppedAnimation<Color>(
            Colors.transparent,
          ),
        ),
      ),

            SizedBox(height: screenHeight * 0.02),
            if (!isLoading)
            // Navigasi ke halaman login jika loading selesai
              FutureBuilder(
                future: Future.delayed(Duration(seconds: 1)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    // Navigasi ke halaman login
                    WidgetsBinding.instance!.addPostFrameCallback((_) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomePage( data: null,),
                        ),
                      );
                    });
                  }
                  return Container();
                },
              ),
          ],
        ),
      ),
    );
  }
}
