const OPENWEATHER_API_KEY = "d66251f6517b306e6cda759dbf66bd2c";


// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:weather/weather.dart';
// import 'package:weatherapp/consts.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
  
//   final WeatherFactory _wf = WeatherFactory(OPENWEATHER_API_KEY);

//   Weather? _weather;

//   @override
//   void initState() {
//     super.initState();
//     _wf.currentWeatherByCityName("madrid").then((w) {
//       setState(() {
//         _weather = w;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildUI(), //..........................
//     );
//   }

//   Widget _buildUI() {
//     if (_weather == null) {
//       return const Center(
//         child: CircularProgressIndicator(),
//       );
//     }
//     return SizedBox(
//         width: MediaQuery.sizeOf(context).width,
//         height: MediaQuery.sizeOf(context).height,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             _locationHeader(), //..........................
//             SizedBox(
//               height: MediaQuery.sizeOf(context).height * 0.08,
//             ),
//             _dateTimeInfo(), //..........................
//             SizedBox(
//               height: MediaQuery.sizeOf(context).height * 0.05,
//             ),
//             _weatherIcon(), //..........................
//             SizedBox(
//               height: MediaQuery.sizeOf(context).height * 0.05,
//             ),
//             _currenttemp(), //..........................
//             SizedBox(
//               height: MediaQuery.sizeOf(context).height * 0.05,
//             ),
//             _extraInfo(),
//             SizedBox(
//               height: MediaQuery.sizeOf(context).height * 0.05,
//             ), //..........................
//           ],
//         ));
//   }

//   Widget _locationHeader() {
//     return Text(
//       _weather?.areaName ?? "", // this shows place name
//       style: const TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.w500,
//       ),
//     );
//   }

//   Widget _dateTimeInfo() {
//     DateTime now = _weather!.date!;
//     return Column(
//       children: [
//         Text(
//           DateFormat("h:mm a").format(now),     // this shows time
//           style: const TextStyle(
//             fontSize: 35,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               DateFormat("EEEE").format(now), //  this shows Day
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             Text(
//               " ${DateFormat("d.m.y").format(now)}", //  this shows Day
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//           ],
//         )
//       ],
//     );
//   }

//   Widget _weatherIcon() {
//     return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             height: MediaQuery.sizeOf(context).height * 0.20,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: NetworkImage(
//                         "http://openweathermap.org/img/wn/${_weather?.weatherIcon}@4x.png"))),
//           ),
//           Text(
//             _weather?.weatherDescription ?? "", //  this shows Day
//             style: const TextStyle(
//               fontSize: 20,
//               color: Colors.black,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ]);
//   }

//   Widget _currenttemp() {
//     return Text(
//       "${_weather?.temperature?.celsius?.toStringAsFixed(0)}°C", //  this shows Day
//       style: const TextStyle(
//         fontSize: 20,
//         color: Colors.black,
//         fontWeight: FontWeight.w500,
//       ),
//     );
//   }

//   Widget _extraInfo() {
//     return Container(
//       height: MediaQuery.sizeOf(context).height * 0.15,
//       width: MediaQuery.sizeOf(context).width * 0.80,
//       decoration: BoxDecoration(
//         color: Colors.deepPurpleAccent,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         // mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "Max : ${_weather?.tempMax?.celsius?.toStringAsFixed(0)}°C", //  this shows Day
//                 style: const TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//                 SizedBox(
//               width: MediaQuery.sizeOf(context).width * 0.08,
//             ), 
//               Text(
//                 "Min : ${_weather?.tempMin?.celsius?.toStringAsFixed(0)}°C", //  this shows Day
//                 style: const TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               )
//             ],
//           ),

//           //.............................   windsped   .....................//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "Wind : ${_weather?.windSpeed?.toStringAsFixed(0)}m/s", //  this shows Day
//                 style: const TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//                 SizedBox(
//                 width: MediaQuery.sizeOf(context).width * 0.06,
//               ), 
//               Text(
//                 "Humidity : ${_weather?.humidity?.toStringAsFixed(0)}%", 
//                 style: const TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
