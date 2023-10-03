import 'package:flutter/material.dart';
import 'package:presensi_mahasiswa/globals.dart' as globals;
import 'package:presensi_mahasiswa/presensi_shift_class.dart';
import 'package:intl/intl.dart';

class RiwayatShiftMalam extends StatelessWidget {
  const RiwayatShiftMalam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00ABCD),
        title: const Text(
          'Riwayat Presensi Shift Malam',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
              children: <Widget>[
                presensiShiftMalam.isEmpty? const Text('Tidak ada absensi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),) :
                Expanded(
                  child: ListView.builder(
                    itemCount: presensiShiftMalam.length,
                    itemBuilder: (context, index) => getRow(index),
                  ),
                ),
              ]
          ),
        )
    );
  }

  Widget getRow(int index) {
    switch(presensiShiftMalam[index].isStatus.toString()){
      case 'Check In':
        imageAssets = 'images/checkIn.png';
        break;
      case 'Check Out':
        imageAssets = 'images/checkOut.png';
        break;
      case 'Break Out':
        imageAssets = 'images/breakOut.png';
        break;
      case 'Break In':
        imageAssets = 'images/breakIn.png';
        break;
      case 'Overtime In':
        imageAssets = 'images/overtimeIn.png';
        break;
      case 'Overtime Out':
        imageAssets = 'images/overtimeOut.png';
        break;
      case 'Interruption Out':
        imageAssets = 'images/interruptionOut.png';
        break;
      case 'Interruption In':
        imageAssets = 'images/interruptionIn.png';
        break;
    }
    return Padding(
      padding: const EdgeInsets.only(left: 5.0 , right: 5.0),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: const Color(0xffe8f8fa),
            child: Image.asset(
              imageAssets,
              width: 27,
              height: 27,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(presensiShiftMalam[index].isStatus.toString(),
                textAlign: TextAlign.left ,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(presensiShiftMalam[index].date.toString(),
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(presensiShiftMalam[index].time.toString(),
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<PresensiShiftMalam> presensiShiftMalam = List.empty(growable: true);
String imageAssets = '';

void addShiftMalamPresence() {
  String date = DateFormat('EEEE, d MMMM yyyy').format(DateTime.now()).toString();
  String time = DateFormat("H:m:s").format(DateTime.now()).toString();

  if (globals.isStatus.isNotEmpty && date.isNotEmpty && time.isNotEmpty){
    {
      presensiShiftMalam.add(PresensiShiftMalam(isStatus: globals.isStatus, date: date, time: time));
    }
  }
}
