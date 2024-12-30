import 'package:flutter/material.dart';

class PlanetsModel {
  String? name;
  Image? image;
  String? title;
  String? description;
  int? distance;
  double? length;
  double? orbit;
  double? radius;
  String? mass;
  String? surface;

  PlanetsModel.fromMap(Map<String, dynamic> map) {
    name = map['planetName'];
    image = map['pngImage'];
    title = map['title'];
    description = map['about'];
    distance = map['distanceFromSunKm'];
    length = map['lengthOfDayHours'];
    orbit = map['orbitalPeriodYears'];
    radius = map['radiusKm'];
    mass = map['massKg'];
    surface = map['surfaceAreaKm2'];
  }
}


List<Map<String, dynamic>> solarSystemData =
[
  {
    'planetName': 'Sun',
    'pngImage': Image.asset('assets/images/sun.png'),
    'threeDModel': 'sun.glb',
    'title': "The Sun: Our Solar System's Star",
    'about':
        "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    'distanceFromSunKm': 0,
    'lengthOfDayHours': 0.0,
    'orbitalPeriodYears': 0.0,
    'radiusKm': 695700.0,
    'massKg': '1.989 × 10³⁰',
    'gravityMps2': 274.0,
    'surfaceAreaKm2': '6.09 × 10¹²'
  },
  {
    'planetName': 'Mercury',
    'pngImage': Image.asset('assets/images/mercury.png'),
    'threeDModel': 'mercury.glb',
    'title': 'Mercury: The Closest Planet',
    'about':
        "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    'distanceFromSunKm': 57909227,
    'lengthOfDayHours': 1407.6,
    'orbitalPeriodYears': 0.24,
    'radiusKm': 2439.7,
    'massKg': '3.301 × 10²³',
    'gravityMps2': 3.7,
    'surfaceAreaKm2': '7.48 × 10⁷'
  },
  {
    'planetName': 'Venus',
    'pngImage': Image.asset('assets/images/venus.png'),
    'threeDModel': 'venus.glb',
    'title': "Venus: Earth's Toxic Twin",
    'about':
        "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
    'distanceFromSunKm': 108209072,
    'lengthOfDayHours': 5832.2,
    'orbitalPeriodYears': 0.62,
    'radiusKm': 6051.8,
    'massKg': '4.867 × 10²⁴',
    'gravityMps2': 8.87,
    'surfaceAreaKm2': '4.60 × 10⁸'
  },
  {
    'planetName': 'Earth',
    'pngImage': Image.asset('assets/images/earth.png'),
    'threeDModel': 'earth.glb',
    'title': 'Earth: Our Blue Marble',
    'about':
        "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
    'distanceFromSunKm': 149598026,
    'lengthOfDayHours': 23.93,
    'orbitalPeriodYears': 1.0,
    'radiusKm': 6371.0,
    'massKg': '5.972 × 10²⁴',
    'gravityMps2': 9.81,
    'surfaceAreaKm2': '5.10 × 10⁸'
  },
  {
    'planetName': 'Mars',
    'pngImage': Image.asset('assets/images/mars.png'),
    'threeDModel': 'mars.glb',
    'title': 'Mars: The Red Planet',
    'about':
        "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
    'distanceFromSunKm': 227943824,
    'lengthOfDayHours': 24.62,
    'orbitalPeriodYears': 1.88,
    'radiusKm': 3389.5,
    'massKg': '6.39 × 10²³',
    'gravityMps2': 3.71,
    'surfaceAreaKm2': '1.45 × 10⁸'
  },
  {
    'planetName': 'Jupiter',
    'pngImage': Image.asset('assets/images/jupiter.png'),
    'threeDModel': 'jupiter.glb',
    'title': 'Jupiter: The Gas Giant',
    'about':
        'Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.',
    'distanceFromSunKm': 778547669,
    'lengthOfDayHours': 9.92,
    'orbitalPeriodYears': 11.86,
    'radiusKm': 69911.0,
    'massKg': '1.898 × 10²⁷',
    'gravityMps2': 24.79,
    'surfaceAreaKm2': '6.21 × 10¹⁵'
  },
  {
    'planetName': 'Saturn',
    'pngImage': Image.asset('assets/images/saturn.png'),
    'threeDModel': 'saturn.glb',
    'title': 'Saturn: The Ringed Planet',
    'about':
        "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
    'distanceFromSunKm': 1426666422,
    'lengthOfDayHours': 10.66,
    'orbitalPeriodYears': 29.46,
    'radiusKm': 58232.0,
    'massKg': '5.683 × 10²⁶',
    'gravityMps2': 10.44,
    'surfaceAreaKm2': '4.27 × 10¹⁵'
  },
  {
    'planetName': 'Uranus',
    'pngImage': Image.asset('assets/images/uranus.png'),
    'threeDModel': 'uranus.glb',
    'title': 'Uranus: The Tilted Planet',
    'about':
        "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    'distanceFromSunKm': 2870990000,
    'lengthOfDayHours': 17.24,
    'orbitalPeriodYears': 84.01,
    'radiusKm': 25362.0,
    'massKg': '8.681 × 10²⁵',
    'gravityMps2': 8.69,
    'surfaceAreaKm2': '8.1 × 10¹⁵'
  },
  {
    'planetName': 'Neptune',
    'pngImage': Image.asset('assets/images/neptune.png'),
    'threeDModel': 'neptune.glb',
    'title': 'Neptune: The Distant World',
    'about':
        'Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.',
    'distanceFromSunKm': 4498252900,
    'lengthOfDayHours': 16.11,
    'orbitalPeriodYears': 164.8,
    'radiusKm': 24622.0,
    'massKg': '1.024 × 10²⁶',
    'gravityMps2': 11.15,
    'surfaceAreaKm2': '7.65 × 10¹⁵'
  }
];
