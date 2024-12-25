import 'package:flutter/material.dart';
import 'package:untitled1/screen/home.dart';
import 'package:untitled1/screen/widget/custom_details_text.dart';

class PlanetScreen extends StatelessWidget {
  const PlanetScreen({super.key});

  static const String routeName = '/Planet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/Rectangle 4.png',
                height: 220, width: double.infinity),
            Container(
              padding: const EdgeInsets.only(top: 35, left: 15),
              alignment: Alignment.topLeft,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                backgroundColor: const Color(0xffEE403d),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            ListView(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: const Text('Earth',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
                const SizedBox(height: 110),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text('Earth: Our Blue Marble',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24)),
                ),
                Image.asset('assets/images/earth 2.png', height: 280),
                // SizedBox(height: 10),
                const Text(
                    'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth s magnetic field protected from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                const SizedBox(height: 10,),
                const CustomDetailsText(text: 'Distance from Sun (km) : 149598026'),
                const CustomDetailsText(text: 'Length of Day (hours) : 23.93'),
                const CustomDetailsText(text: 'Orbital Period (Earth years) : 1'),
                const CustomDetailsText(text: 'Radius (km) : 6371'),
                const CustomDetailsText(text: 'Mass (kg) : 5.972 × 10²⁴'),
                const CustomDetailsText(text: 'Surface Area (km²) : 5.10 × 10⁸'),
              ],
            ),
          ],
        ));
  }
}
