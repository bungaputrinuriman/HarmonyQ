import 'package:flutter/material.dart';
import 'Emosional/Emosional.dart';
import 'fisik/Fisik.dart';
import 'kecerdasan/kecerdasan.dart';
import 'Kepemimpinan/kepemimpinan.dart';
import 'SS/SS.dart';
import 'al-quran.dart';

class HomePage extends StatefulWidget {
  final dynamic data;

  HomePage({required this.data});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Mendapatkan informasi MediaQuery
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFF14181D),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/BG/bg 1 t 1.png',
                width: mediaQuery.size.width,
                fit: BoxFit.cover, // Atur sesuai kebutuhan Anda
              ),
            ),
          ),
          SizedBox(height: 10),

          Stack(
            children: <Widget>[
              Container(
                width: mediaQuery.size.width - 60,
                height: 58,
                margin: EdgeInsets.only(
                  top: 10,
                  left: 25,
                ),
                padding: EdgeInsets.fromLTRB(18, 18, 24, 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF242A30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        onChanged: (text) {
                          // Handle perubahan teks pencarian di sini
                        },
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                top: 8,
                child: Image.asset(
                  'assets/search.png',
                  width: 68,
                  height: 68,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Montserrat",
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AlquranPage("Al-Qur'an"),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          height: 130,
                        padding: EdgeInsets.fromLTRB(26, 16, 22, 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFF242A30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(height: 8),
                            Image.asset(
                              'assets/home/Vector.png',
                              width: 47,
                              height: 52,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Al-Qur'an",
                              style: TextStyle(
                                color: Color(0xFFA0A2A5),
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => KecerdasanPage("Kecerdasan"),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          height: 130,
                          padding: EdgeInsets.fromLTRB(26, 16, 22, 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFF242A30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(height: 8),
                              Image.asset(
                                'assets/home/brain-solid 1.png',
                                width: 47,
                                height: 52,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Kecerdasan",
                                style: TextStyle(
                                  color: Color(0xFFA0A2A5),
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => EmosionalPage("Emosional"),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          height: 130,
                          padding: EdgeInsets.fromLTRB(26, 16, 22, 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFF242A30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(height: 8),
                              Image.asset(
                                'assets/home/face-laugh-beam-solid 1.png',
                                width: 47,
                                height: 52,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Emosional",
                                style: TextStyle(
                                  color: Color(0xFFA0A2A5),
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SSPage("Sosial & Spiriual"),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          height: 130,
                          padding: EdgeInsets.fromLTRB(26, 16, 22, 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFF242A30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(height: 8),
                              Image.asset(
                                'assets/home/users-solid 1.png',
                                width: 47,
                                height: 52,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Sosial & Spiriual",
                                style: TextStyle(
                                  color: Color(0xFFA0A2A5),
                                  fontSize: 7,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FisikPage("Fisik"),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          height: 130,
                          padding: EdgeInsets.fromLTRB(26, 16, 22, 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFF242A30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(height: 8),
                              Image.asset(
                                'assets/home/ph_barbell-fill.png',
                                width: 47,
                                height: 52,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Fisik",
                                style: TextStyle(
                                  color: Color(0xFFA0A2A5),
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => KepemimpinanPage("Kepemimpinan"),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          width: 110,
                          height: 130,
                          padding: EdgeInsets.fromLTRB(26, 16, 22, 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFF242A30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(height: 8),
                              Image.asset(
                                'assets/home/person-military-pointing-solid 1.png',
                                width: 47,
                                height: 52,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Kepemimpinan",
                                style: TextStyle(
                                  color: Color(0xFFA0A2A5),
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
