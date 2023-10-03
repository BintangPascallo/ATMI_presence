import 'package:flutter/material.dart';
import 'package:presensi_mahasiswa/components.dart';
import 'package:presensi_mahasiswa/shift_pagi.dart';
import 'package:presensi_mahasiswa/shift_malam.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';
import 'dashboard_setting.dart';
import 'package:presensi_mahasiswa/globals.dart' as globals;

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {

    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE, d MMMM yyyy').format(now);

    String getSystemTime() {
      var now = DateTime.now();
      return DateFormat("H:m:s").format(now);
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: bgMidColor,
        child: const Icon(Icons.settings),
        onPressed: (){
          _awaitFromDashboardSetting(context);
        },
      ),
      backgroundColor: const Color(0xff00ABCD),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: const Text(
                        'Dashboard',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 5),
                      ), // changes position of shadow
                    ],
                  ),
                  child: Center(
                      child: CircleAvatar(
                        radius: 150,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ClipOval(
                            child:
                            Image.asset(
                                'images/dashboardPhoto.png'
                            ),
                          ),
                        ),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
                  child: Text(
                    globals.data[0],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 7.5),
                  child: Text(
                    globals.data[1],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(90,90),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Image.asset(
                            'images/sun.png'
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ShiftPagi()),
                            );
                          },
                        ),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text(
                                'Shift Pagi',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 47.5),
                              child: Text(
                                '07.30 - 16.30',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(90,90),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Image.asset(
                              'images/moon.png'
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ShiftMalam()),
                            );
                          },
                        ),
                      ),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50.0),
                            child: Text(
                              'Shift Malam',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              '15.30 - 22.00',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 50),
                    child:  Text(
                      formattedDate,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 50.0),
                    child:  TimerBuilder.periodic(const Duration(seconds: 1), builder: (context) {
                      return Text(
                        getSystemTime(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

  void _awaitFromDashboardSetting(BuildContext context) async{
    final result = await Navigator.push(
        context, MaterialPageRoute(
        builder: (context) => const DashboardSetting(),
    ));
    setState((){
     globals.data = result;
    });
  }
}