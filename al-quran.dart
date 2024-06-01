import 'package:flutter/material.dart';

import 'package:project/quiz.dart';


class AlquranPage extends StatefulWidget {
  final String pageTitle;

  AlquranPage(this.pageTitle);

  @override
  _AlquranPageState createState() => _AlquranPageState();
}
class _AlquranPageState extends State<AlquranPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFF14181D),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'assets/BG/bg 1 t 1.png',
                      width: mediaQuery.size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 90,
                      height: 36,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(39),
                        color: Color(0xFF242A30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chevron_left,
                            size: 20,
                            color: Colors.white,
                          ),
                          SizedBox(width: 2),
                          Text(
                            'Back',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "GAMES",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.2,
                ),
              ),
            ),
            SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.size.width * 0.1,
                ),
                child: Container(
                  width: double.infinity,
                  height: 145,
                  decoration: BoxDecoration(
                    color: Color(0xFF242A30),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'MHQ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Coba tes seberapa kuat hafalan kamu, dengan mencoba menebak apa lanjutan ayat dari soal.',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizPage(),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding:
                            EdgeInsets.fromLTRB(8, 3.67, 8, 8),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(24),
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                          child: Container(
                            width: mediaQuery.size.width * 0.85,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(24),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF2F69F6),
                                  Color(0xFF631ED0),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Mainkan',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQuery.size.width * 0.1,
                ),
                child: Container(
                  width: double.infinity,
                  height: 145,
                  decoration: BoxDecoration(
                    color: Color(0xFF242A30),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tebak Halaman',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 3),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Coba tes seberapa hafal kamu halaman-halaman di Al Quran, dengan mencoba menebak halaman berapa atau apa awal dari halaman yang di tanyakan',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizPage(),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding:
                            EdgeInsets.fromLTRB(8, 3.67, 8, 8),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(24),
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                          child: Container(
                            width: mediaQuery.size.width * 0.85,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(24),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF2F69F6),
                                  Color(0xFF631ED0),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Mainkan',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
