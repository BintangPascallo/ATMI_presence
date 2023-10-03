import 'package:flutter/material.dart';
import 'package:presensi_mahasiswa/globals.dart' as globals;

showAlertDialog(BuildContext context) {
  String status = globals.isStatus;

  Widget cancelButton = TextButton(
    child: const Text("Tidak"),
    onPressed:  () {
      Navigator.of(context).pop();
    },
  );

  Widget continueButton = TextButton(
    child: const Text("Ya"),
    onPressed:  () {
      Navigator.of(context).pop();
      showSuccessDialog(context);
    },
  );

  AlertDialog alert = AlertDialog(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    ),
    title: const Text(
      'Peringatan !',
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 22.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    content: Text(
        "Apakah Anda yakin untuk melakukan presensi $status?",
    ),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showSuccessDialog(BuildContext context) {
  String status = globals.isStatus;

  AlertDialog alert = AlertDialog(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    ),
    title: const Text(
      'Success',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    content: Text(
      "Presensi $status Anda Berhasil",
      textAlign: TextAlign.center,
    ),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showEmptyDialog(BuildContext context) {
  AlertDialog alert = const AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    ),
    title: Text(
      'Peringatan',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    content: Text(
      "Nama lengkap tidak boleh kosong",
      textAlign: TextAlign.center,
    ),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showDataSaved(BuildContext context) {
  AlertDialog alert = const AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    ),
    title: Text(
      'Success',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    content: Text(
      "Data Berhasil Disimpan",
      textAlign: TextAlign.center,
    ),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}