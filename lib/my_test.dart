import 'package:flutter/material.dart';
import 'package:untitled1/model/planets_model.dart';
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
    List<PlanetsModel> spac;

    spac = List<PlanetsModel>.from((solarSystemData).map((e) => PlanetsModel.fromMap(e))).toList();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: spac[currentIndex].image,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomFloutingButton(
                  icon: Icons.arrow_back_ios_new,
                  onPress: () {
                    if(currentIndex < spac.length -1 ){
                      currentIndex ++;
                    }
                    setState(() {

                    });
                  },
                ),
                Text(
                  spac[currentIndex].name.toString(),
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
