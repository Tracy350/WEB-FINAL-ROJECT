// import 'package:flutter/material.dart';
// import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
// import 'package:hotel_vendor/components/select_location.dart';
// import 'package:hotel_vendor/login%20screens/hotel_type_screen.dart';

// class LocationScreen extends StatelessWidget {
//   const LocationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Row(
//           children: [
//             // Slideshow on the left
//             Expanded(
//               flex: 3,
//               child: SizedBox(
//                 height: MediaQuery.of(context).size.height,
//                 child: ImageSlideshow(
//                   width: double.infinity,
//                   autoPlayInterval: 3000,
//                   isLoop: true,
//                   children: [
//                     Image.asset(
//                       'assets/hotel1.jpg',
//                       fit: BoxFit.cover,
//                     ),
//                     Image.asset(
//                       'assets/hotel2.jpg',
//                       fit: BoxFit.cover,
//                     ),
//                     Image.asset(
//                       'assets/hotel3.jpg',
//                       fit: BoxFit.cover,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Select Location on the right
//             Expanded(
//               flex: 3,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 50.0),
//                 child: SelectLocation(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
