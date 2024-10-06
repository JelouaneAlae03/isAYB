// import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';

// class ProgressBarWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ClipRect(
//         child: Align(
//           alignment: Alignment.topCenter,
//           heightFactor: 0.5, // Show only the top half
//           child: CircularPercentIndicator(
//             radius: 100.0,
//             lineWidth: 15.0,
//             animation: true,
//             percent: 0.90, // Adjust the percentage as needed
//             center: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Traité",
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   "123",
//                   style: TextStyle(
//                     fontSize: 40.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             circularStrokeCap: CircularStrokeCap.round,
//             backgroundColor: Colors.grey.shade300,
//             progressColor: Color(0xFFBE9B7B),
//             ),
//           ),
//         )
//     );

        
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       backgroundColor: Colors.black,
//       body: ProgressBarWidget(),
//     ),
//   ));
// }
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
double anotherPercent = 1; // Par exemple, 75%
// int anotherCount = 75; // Un nombre à afficher au centre
class SemiCircularProgressBar extends StatelessWidget {
  final double percent;
  final String centerText;
  final int count;

  const SemiCircularProgressBar({
    Key? key,
    required this.percent,
    required this.centerText,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      // color: Color(0xFF2C3E50), // Background color matching the image
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             // child: Row(
//             //   children: [
//             //     Icon(
//             //       Icons.assignment,
//             //       color: Color(0xFFBE9B7B),
//             //       size: 40.0,
//             //     ),
//             //     SizedBox(width: 10),
//             //     Text(
//             //       "Bons de commande par projet",
//             //       style: TextStyle(
//             //         fontSize: 16.0,
//             //         color: Colors.white,
//             //       ),
//             //     ),
//           //   //   ],
//           ),
//           // ),
//           CircularPercentIndicator(
//             radius: 100.0,
//             lineWidth: 15.0,
//             animation: true,
//             percent: percent,
//             center: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   centerText,
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   "$count",
//                   style: TextStyle(
//                     fontSize: 40.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             circularStrokeCap: CircularStrokeCap.round,
//             backgroundColor: Colors.grey.shade300,
//             progressColor: Color(0xFFBE9B7B),
//             reverse: false, // To make it semicircular
//             arcType: ArcType.HALF,
//           ),
//           CircularPercentIndicator(
//             radius: 100.0,
//             lineWidth: 15.0,
//             animation: true,
//             percent: percent,
//             center: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   centerText,
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   "$count",
//                   style: TextStyle(
//                     fontSize: 40.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             circularStrokeCap: CircularStrokeCap.round,
//             backgroundColor: Colors.grey.shade300,
//             progressColor: Color.fromARGB(255, 201, 198, 195),
//             reverse: false, // To make it semicircular
//             arcType: ArcType.HALF,
//           ),
//         ],
//       ),
//     );
//   }
// }
Stack(
  alignment: Alignment.center,
  children: [
    CircularPercentIndicator(
      // radius: 80.0,
      // lineWidth: 10.0,
      // animation: true,
       radius: 100.0,
      lineWidth: 15.0,
      animation: true,
      percent: anotherPercent, // La variable définie plus haut
      // center: Text(
      //   "$anotherCount", // La variable définie plus haut
      //   style: TextStyle(
      //     fontSize: 25.0,
      //     fontWeight: FontWeight.bold,
      //     color: Colors.white,
      //   ),
      // ),
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: Colors.transparent,
      progressColor:  Color(0xFFBE9B7B),
      reverse: false,
      arcType: ArcType.HALF,
    ),CircularPercentIndicator(
      radius: 100.0,
      lineWidth: 15.0,
      animation: true,
      percent: percent, // Assurez-vous que cette variable est aussi définie
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            centerText, // Assurez-vous que cette variable est aussi définie
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "$count", // Assurez-vous que cette variable est aussi définie
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: Colors.grey.shade300,
      progressColor: Color.fromRGBO(47, 61, 75, 0.6),
      reverse: false,
      arcType: ArcType.HALF,
    ),
  ],
);
  }
  }
