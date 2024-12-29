import 'package:flutter/material.dart';

List<Map<String,dynamic>> planets =
[
  {
    'name' : 'Earth',
    'image' : Image.asset('assets/images/earth.png'),
    'description' : 'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth s magnetic field protected from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
    'distance' : '149598026',
    'length' : '23.93',
    'orbit' : '1',
    'radius' : '6971',
    'mass' : '5.972 * 10^24',
    'surface' : '5.10 * 10^8',
  },
  {
    'name' : 'Venus',
    'image' : Image.asset('assets/images/venus.png'),
    'description' : 'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth s magnetic field protected from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
    'distance' : '2015',
    'length' : '23.93',
    'orbit' : '1',
    'radius' : '6971',
    'mass' : '5.972 * 10^24',
    'surface' : '5.10 * 10^8',
  },
];













Map<String,Image> planetMap =
{
'Earth' : Image.asset('assets/images/earth.png'),
'Venus' : Image.asset('assets/images/venus.png'),
'Uranus' : Image.asset('assets/images/uranus.png'),
'Sun' : Image.asset('assets/images/sun.png'),
'Saturn' : Image.asset('assets/images/saturn.png'),
'Neptune' : Image.asset('assets/images/neptune.png'),
'Mercury' : Image.asset('assets/images/mercury.png'),
'Mars' : Image.asset('assets/images/mars.png'),
'Jupiter' : Image.asset('assets/images/jupiter.png'),
};