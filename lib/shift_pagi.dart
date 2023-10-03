import 'package:flutter/material.dart';
import 'package:presensi_mahasiswa/components.dart';
import 'package:presensi_mahasiswa/confirmation_dialog.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:intl/intl.dart';
import 'riwayat_shift_pagi.dart';
import 'package:presensi_mahasiswa/globals.dart' as globals;

// ignore: must_be_immutable
class ShiftPagi extends StatelessWidget {
  ShiftPagi({Key? key}) : super(key: key);

  String formattedDate = DateFormat('EEEE, d MMMM yyyy').format(DateTime.now());

  String getSystemTime() {
    var now = DateTime.now();
    return DateFormat("H:m:s").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00ABCD),
      body:
        SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: const Text(
                    'Shift Pagi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: const Text(
                    '07.30 - 16.30',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 32.5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(120,120),
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'images/checkIn.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const Text('Check In',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: bgPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              globals.isStatus = "Check In";
                              showAlertDialog(context);
                              addShiftPagiPresence();
                            },
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(120,120),
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'images/checkOut.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const Text('Check Out',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: bgPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              globals.isStatus = "Check Out";
                              showAlertDialog(context);
                              addShiftPagiPresence();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(120,120),
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'images/breakOut.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const Text('Break Out',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: bgPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              globals.isStatus = "Break Out";
                              showAlertDialog(context);
                              addShiftPagiPresence();
                            },
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(120,120),
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'images/breakIn.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const Text('Break In',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: bgPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              globals.isStatus = "Break In";
                              showAlertDialog(context);
                              addShiftPagiPresence();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(120,120),
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'images/overtimeIn.png',
                                  width: 75,
                                  height: 75,
                                ),
                                const Text('Overtime In',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: bgPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              globals.isStatus = "Overtime In";
                              showAlertDialog(context);
                              addShiftPagiPresence();
                            },
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(120,120),
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'images/overtimeOut.png',
                                  width: 75,
                                  height: 75,
                                ),
                                const Text('Overtime Out',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: bgPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              globals.isStatus = "Overtime Out";
                              showAlertDialog(context);
                              addShiftPagiPresence();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(120,120),
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'images/interruptionOut.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const Text('Interruption Out',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: bgPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              globals.isStatus = "Interruption Out";
                              showAlertDialog(context);
                              addShiftPagiPresence();
                            },
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: const Size(120,120),
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'images/interruptionIn.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const Text('Interruption In',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: bgPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              globals.isStatus = "Interruption In";
                              showAlertDialog(context);
                              addShiftPagiPresence();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(300,45),
                            shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.list,
                              size: 35.0,
                              color: bgPrimaryColor,
                            ),
                            SizedBox(height: 6,),
                            Text('Riwayat Presensi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: bgPrimaryColor,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RiwayatShiftPagi()),
                          );
                        },
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
                        fontSize: 20.0,
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
                          fontSize: 22.0,
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
}
