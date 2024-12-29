import 'package:flutter/material.dart';
import 'package:untitled1/screen/home.dart';
import 'package:untitled1/screen/widget/custom_details_text.dart';

import '../constant.dart';

class PlanetScreen extends StatelessWidget {
  const PlanetScreen({super.key});

  static const String routeName = '/Planet';

  @override
  Widget build(BuildContext context) {
    final planet = planets[currentIndex];
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/Rectangle 4.png',
                height: 220, width: double.infinity),
            ListView(
              children: [

                Container(
                  alignment: Alignment.topCenter,
                  child:  Text(planet['name'],
                      style: const TextStyle(
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
                SizedBox(
                  height: 280,
                  width: double.infinity,
                  child: planet['image'],
                ),

                // SizedBox(height: 10),
                 Text(
                   planet['description'],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                const SizedBox(height: 10,),
                 CustomDetailsText(text: 'Distance from Sun (km) : ${planet['distance']}'),
                 CustomDetailsText(text: 'Length of Day (hours) : 23.93'),
                 CustomDetailsText(text: 'Orbital Period (Earth years) : 1'),
                 CustomDetailsText(text: 'Radius (km) : 6371'),
                 CustomDetailsText(text: 'Mass (kg) : 5.972 × 10²⁴'),
                 CustomDetailsText(text: 'Surface Area (km²) : 5.10 × 10⁸'),
              ],
            ),
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
          ],
        ));
  }
}
