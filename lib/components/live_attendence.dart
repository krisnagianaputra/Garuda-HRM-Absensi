import 'package:attandence_app/components/button.dart';
import 'package:attandence_app/pages/clock_in.dart';
import 'package:attandence_app/pages/clock_out.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class LiveAttendence extends StatelessWidget {
  const LiveAttendence({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                // Tittle
                const SizedBox(height: 15),

                const Text(
                  'Live Atendence',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 20),

                // Current Time
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    DateFormat.jm().format(DateTime.now()),
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    DateFormat.MMMMEEEEd().format(DateTime.now()),
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Office Hour
                const Text(
                  'Office Hour',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '09:00 AM - 03:00 PM',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                // Button
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: MyButton(
                                text: "Clock In",
                                onPressed: () {
                                  // Pindah ke halaman ClockInPage saat tombol Clock In ditekan
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ClockIn()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        MyButton(
                          text: "Clock Out",
                          onPressed: () {
                            // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ClockOut()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
