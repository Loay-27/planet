import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/screen/widget/custom_floating_button.dart';

class ShowPlanets extends StatefulWidget {
  const ShowPlanets({super.key});

  @override
  State<ShowPlanets> createState() => _ShowPlanetsState();
}

class _ShowPlanetsState extends State<ShowPlanets> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final entries = planetMap.entries.toList();
    final currentKey = entries[currentIndex].key;
    final currentValue = entries[currentIndex].value;


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: currentValue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomFloutingButton(
                  icon: Icons.arrow_back_ios_new,
                  onPress: () {
                    if(currentIndex < entries.length -1){
                      currentIndex ++;
                    }
                    setState(() {

                    });
                  },
                ),
                Text(
                  currentKey,
                  style: const TextStyle(fontSize: 24),
                ),
                CustomFloutingButton(
                  icon: Icons.arrow_forward_ios_outlined,
                  onPress: () {
                    if(currentIndex > 0){
                      currentIndex --;
                    }
                    setState(() {

                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
