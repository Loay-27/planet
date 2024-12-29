import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/screen/planet_details.dart';
import 'package:untitled1/screen/widget/custom_button.dart';
import 'package:untitled1/screen/widget/custom_floating_button.dart';

int currentIndex = 0;


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {

    final planet = planets[currentIndex];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset('assets/images/Rectangle 4.png'),
          ListView(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: const Text('Explore',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
              ),
              const SizedBox(height: 160),
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text('Which planet\n would you like to explore?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24)),
              ),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: planet['image'],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomFloutingButton(
                      heroTag: 'uniqueTag1',
                      icon: Icons.arrow_back,
                      onPress: () {
                        if (currentIndex > 0) {
                          currentIndex--;
                        }
                        setState(() {});
                      },
                    ),
                    //    SizedBox(width: 90),
                     Text(planet['name'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                    CustomFloutingButton(
                      heroTag: 'uniqueTag2',
                      icon: Icons.arrow_forward,
                      onPress: () {
                        if (currentIndex < planets.length -1) {
                          currentIndex++;
                        }
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              CustomButton(
                onPress: () {
                  Navigator.of(context).pushNamed(PlanetScreen.routeName);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
