import 'package:attandence_app/index%20profile/hubungi_kami.dart';
import 'package:attandence_app/index%20profile/informasi_pribadi.dart';
import 'package:attandence_app/index%20profile/kode_aktivasi.dart';
import 'package:attandence_app/index%20profile/tentang_aplikasi.dart';
import 'package:attandence_app/pages/kartu_pegawai.dart';
import 'package:attandence_app/pages/riwayat_absensi.dart';
import 'package:attandence_app/pages/profile_edit.dart';
import 'package:flutter/material.dart';

class IndexProfile extends StatelessWidget {
  const IndexProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(100), // Set the desired height of the app bar
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 12, 53, 106),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("lib/images/garudahrm.png"),
                    height: 60,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 35, left: 35),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 0, 0, 0)
                          .withOpacity(0.5), // warna shadow
                      spreadRadius: 3, // seberapa jauh shadow menyebar
                      blurRadius: 7, // seberapa buram shadow
                      offset: Offset(0, 3), // pergeseran shadow (x, y))
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Image(
                        image: AssetImage("lib/images/pp.png"),
                        height: 70,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "DeviSka@gmail.com",
                      style: TextStyle(
                          color: Color.fromARGB(255, 12, 53, 106),
                          fontSize: 17,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Pindah ke halaman ClockInPage saat tombol Clock In ditekan
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileEdit()),
                                      );
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right:
                                                  8.0), // Adjust the padding as needed
                                          child: Image(
                                            image: AssetImage(
                                                "lib/images/qrcode.png"),
                                            height: 30,
                                          ),
                                        ),
                                        Text(
                                          "QR Code",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 255, 255),
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w800),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      elevation: 7,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileEdit()),
                                );
                              },
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right:
                                            8.0), // Adjust the padding as needed
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.lightGreen,
                                    ),
                                  ),
                                  Text(
                                    "Edit Profile",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.w800),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                elevation: 7,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InformasiPribadi()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Icon(
                          Icons.person_2_rounded,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Text(
                        "Informasi Pribadi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HubungiKami()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Icon(
                          Icons.phone_in_talk_rounded,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Text(
                        "Hubungi Kami",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KartuPegawai()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Icon(
                          Icons.assignment_ind_sharp,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Text(
                        "Kartu Pegawai",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RiwayatAbsensi()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Icon(
                          Icons.history,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Text(
                        "Riwayat Absensi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KodeAktivasi()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Icon(
                          Icons.qr_code_2,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Text(
                        "Kode Aktivasi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TentangAplikasi()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Icon(
                          Icons.info_outline_rounded,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Text(
                        "Tentang Aplikasi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileEdit()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Text(
                          "Logout",
                          style: TextStyle(
                            fontSize: 25,
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 0, 0),
                    textStyle: TextStyle(fontWeight: FontWeight.w900),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
