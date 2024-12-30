import 'package:flutter/material.dart';
import 'package:untitled1/controller/planets_controller.dart';
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
            ListView(
              children: [

                Container(
                  alignment: Alignment.topCenter,
                  child:  Text(list[currentIndex].name.toString(),
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
                const SizedBox(height: 110),
                 Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(list[currentIndex].title.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24)),
                ),
                SizedBox(
                  height: 280,
                  width: double.infinity,
                  child: list[currentIndex].image,
                ),

                // SizedBox(height: 10),
                 Text(
                   list[currentIndex].description.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                const SizedBox(height: 10,),
                 CustomDetailsText(text: 'Distance from Sun (km) : ${list[currentIndex].distance.toString()}'),
                 CustomDetailsText(text: 'Length of Day (hours) : ${list[currentIndex].length.toString()}'),
                 CustomDetailsText(text: 'Orbital Period (Earth years) : ${list[currentIndex].orbit.toString()}'),
                 CustomDetailsText(text: 'Radius (km) : ${list[currentIndex].radius.toString()}'),
                 CustomDetailsText(text: 'Mass (kg) : ${list[currentIndex].mass.toString()}'),
                 CustomDetailsText(text: 'Surface Area (km²) : ${list[currentIndex].surface.toString()}'),
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
