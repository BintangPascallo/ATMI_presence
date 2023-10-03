import 'package:flutter/material.dart';
import 'package:presensi_mahasiswa/components.dart';
import 'confirmation_dialog.dart';

List<String> namaProdi = [
  'Teknik Mesin Industri',
  'Teknik Mekatronika',
  'Teknik Perancangan Mekanik dan Mesin',
  'Perancangan Manufaktur',
  'Rekayasa Teknologi Manufaktur',
  'Teknologi Rekayasa Mekatronika'
];

class DashboardSetting extends StatefulWidget {
  const DashboardSetting({Key? key}) : super(key: key);

  @override
  State<DashboardSetting> createState() => _DashboardSettingState();
}

class _DashboardSettingState extends State<DashboardSetting> {
  TextEditingController textFieldController = TextEditingController();
  String currentOption = namaProdi[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff00ABCD),
        title: const Text(
          'Dashboard Setting',
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                          child: const Text(
                            'Nama Lengkap',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 55.0,
                            child: TextField(
                              controller: textFieldController,
                              maxLength: 32,
                              decoration: InputDecoration(
                                counterText: '',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: const BorderSide(
                                      width: 1.0,
                                      color: Colors.grey
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  filled: true,
                                  hintStyle: const TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Nama Lengkap",
                                  fillColor: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                          child: const Text(
                            'Nama Prodi',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        RadioListTile(
                          title: const Text(
                            'TMI - Teknik Mesin Industri (D3)',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          value: namaProdi[0],
                          groupValue: currentOption,
                          onChanged: (value){
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text(
                            'TMK - Teknik Mekatronika (D3)',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          value: namaProdi[1],
                          groupValue: currentOption,
                          onChanged: (value){
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text(
                            'TPM - Teknik Perancangan Mekanik dan Mesin (D3)',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          value: namaProdi[2],
                          groupValue: currentOption,
                          onChanged: (value){
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text(
                            'PM - Perancangan Manufaktur (D4)',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          value: namaProdi[3],
                          groupValue: currentOption,
                          onChanged: (value){
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text(
                            'TRM - Rekayasa Teknologi Manufaktur (D4)',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          value: namaProdi[4],
                          groupValue: currentOption,
                          onChanged: (value){
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text(
                            'TRMK - Teknologi Rekayasa Mekatronika (D3)',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          value: namaProdi[5],
                          groupValue: currentOption,
                          onChanged: (value){
                            setState(() {
                              currentOption = value.toString();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: bgMidColor,
                            fixedSize: const Size(150,45),
                            shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.check,
                              size: 35.0,
                              color: Colors.white,
                            ),
                            SizedBox(height: 6,),
                            Text('Simpan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          if(textFieldController.text == '') {
                            showEmptyDialog(context);
                          }
                          else {
                            _saveData(context);
                            showDataSaved(context);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveData(BuildContext context) {
    List<String> sendData = [textFieldController.text, currentOption];
    Navigator.pop(context, sendData);
  }
}
