// // import 'package:flutter/material.dart';

// // class OrderCard extends StatelessWidget {
// //   final String orderNumber;
// //   final String amount;
// //   final String responsible;
// //   final void Function() onAccept;
// //   final void Function() onReject;

// //   const OrderCard({
// //     Key? key,
// //     required this.orderNumber,
// //     required this.amount,
// //     required this.responsible,
// //     required this.onAccept,
// //     required this.onReject,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Dismissible(
// //       key: Key(orderNumber), // Unique key for each order
// //       background: Container(
// //         color: Colors.green,
// //         alignment: Alignment.centerLeft,
// //         padding: EdgeInsets.only(left: 20.0),
// //         child: Icon(Icons.check, color: Colors.white),
// //       ),
// //       secondaryBackground: Container(
// //         color: Colors.red,
// //         alignment: Alignment.centerRight,
// //         padding: EdgeInsets.only(right: 20.0),
// //         child: Icon(Icons.close, color: Colors.white),
// //       ),
// //       onDismissed: (direction) {
// //         if (direction == DismissDirection.startToEnd) {
// //           onAccept();
// //         } else if (direction == DismissDirection.endToStart) {
// //           onReject();
// //         }
// //       },
// //       child: Card(
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(10),
// //         ),
// //         child: Container(
// //           width: 341,
// //           height: 65,
// //           decoration: BoxDecoration(
// //             color: Color(0xFF535D38),
// //             borderRadius: BorderRadius.circular(10),
// //           ),
// //           child: Stack(
// //             children: [
// //               Positioned(
// //                 left: 0,
// //                 top: 0,
// //                 child: Container(
// //                   width: 53,
// //                   height: 65,
// //                   decoration: BoxDecoration(color: Color(0xFF05FF00)),
// //                 ),
// //               ),
// //               Positioned(
// //                 right: 0,
// //                 top: 0,
// //                 child: Container(
// //                   width: 53,
// //                   height: 65,
// //                   decoration: BoxDecoration(color: Color(0xFFFF0000)),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 11,
// //                 top: 16,
// //                 child: Container(
// //                   width: 32,
// //                   height: 32,
// //                   decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
// //                 ),
// //               ),
// //               Positioned(
// //                 right: 11,
// //                 top: 16,
// //                 child: Container(
// //                   width: 32,
// //                   height: 32,
// //                   decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 65,
// //                 top: 0,
// //                 child: Container(
// //                   width: 276,
// //                   height: 65,
// //                   padding: EdgeInsets.symmetric(vertical: 12),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       Text.rich(
// //                         TextSpan(
// //                           children: [
// //                             TextSpan(
// //                               text: 'Numéro',
// //                               style: TextStyle(
// //                                 color: Color(0xFF2F3D4B),
// //                                 fontSize: 12,
// //                                 fontFamily: 'Barlow Semi Condensed',
// //                                 fontWeight: FontWeight.w500,
// //                               ),
// //                             ),
// //                             TextSpan(
// //                               text: ' : $orderNumber\n',
// //                               style: TextStyle(
// //                                 color: Color(0xFF2F3D4B),
// //                                 fontSize: 12,
// //                                 fontFamily: 'Barlow Semi Condensed',
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                             TextSpan(
// //                               text: 'Montant',
// //                               style: TextStyle(
// //                                 color: Color(0xFF2F3D4B),
// //                                 fontSize: 12,
// //                                 fontFamily: 'Barlow Semi Condensed',
// //                                 fontWeight: FontWeight.w500,
// //                               ),
// //                             ),
// //                             TextSpan(
// //                               text: ' : $amount\n',
// //                               style: TextStyle(
// //                                 color: Color(0xFF2F3D4B),
// //                                 fontSize: 12,
// //                                 fontFamily: 'Barlow Semi Condensed',
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                             TextSpan(
// //                               text: 'Responsable',
// //                               style: TextStyle(
// //                                 color: Color(0xFF2F3D4B),
// //                                 fontSize: 12,
// //                                 fontFamily: 'Barlow Semi Condensed',
// //                                 fontWeight: FontWeight.w500,
// //                               ),
// //                             ),
// //                             TextSpan(
// //                               text: ' : $responsible',
// //                               style: TextStyle(
// //                                 color: Color(0xFF2F3D4B),
// //                                 fontSize: 12,
// //                                 fontFamily: 'Barlow Semi Condensed',
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// class OrderCard extends StatelessWidget {
//   final String orderNumber;
//   final String amount;
//   final String responsible;
//   final void Function() onAccept;
//   final void Function() onReject;

//   const OrderCard({
//     Key? key,
//     required this.orderNumber,
//     required this.amount,
//     required this.responsible,
//     required this.onAccept,
//     required this.onReject,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//       key: Key(orderNumber), // Unique key for each order
//       background: Container(
//         color: Colors.green,
//         alignment: Alignment.centerLeft,
//         padding: EdgeInsets.only(left: 20.0),
//         child: Icon(Icons.check, color: Colors.white),
//       ),
//       secondaryBackground: Container(
//         color: Colors.red,
//         alignment: Alignment.centerRight,
//         padding: EdgeInsets.only(right: 20.0),
//         child: Icon(Icons.close, color: Colors.white),
//       ),
//       onDismissed: (direction) {
//         if (direction == DismissDirection.startToEnd) {
//           onAccept();
//         } else if (direction == DismissDirection.endToStart) {
//           onReject();
//         }
//       },
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Container(
//           width: 341,
//           height: 65,
//           decoration: BoxDecoration(
//             color: Color(0xFF535D38),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 child: Container(
//                   width: 53,
//                   height: 65,
//                   decoration: BoxDecoration(color: Color(0xFF05FF00)),
//                 ),
//               ),
//               Positioned(
//                 right: 0,
//                 top: 0,
//                 child: Container(
//                   width: 53,
//                   height: 65,
//                   decoration: BoxDecoration(color: Color(0xFFFF0000)),
//                 ),
//               ),
//               Positioned(
//                 left: 11,
//                 top: 16,
//                 child: Container(
//                   width: 32,
//                   height: 32,
//                   decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
//                 ),
//               ),
//               Positioned(
//                 right: 11,
//                 top: 16,
//                 child: Container(
//                   width: 32,
//                   height: 32,
//                   decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
//                 ),
//               ),
//               Positioned(
//                 left: 65,
//                 top: 0,
//                 child: Container(
//                   width: 276,
//                   height: 65,
//                   padding: EdgeInsets.symmetric(vertical: 12),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text.rich(
//                         TextSpan(
//                           children: [
//                             TextSpan(
//                               text: 'Numéro',
//                               style: TextStyle(
//                                 color: Color(0xFF2F3D4B),
//                                 fontSize: 12,
//                                 fontFamily: 'Barlow Semi Condensed',
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             TextSpan(
//                               text: ' : $orderNumber\n',
//                               style: TextStyle(
//                                 color: Color(0xFF2F3D4B),
//                                 fontSize: 12,
//                                 fontFamily: 'Barlow Semi Condensed',
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             TextSpan(
//                               text: 'Montant',
//                               style: TextStyle(
//                                 color: Color(0xFF2F3D4B),
//                                 fontSize: 12,
//                                 fontFamily: 'Barlow Semi Condensed',
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             TextSpan(
//                               text: ' : $amount\n',
//                               style: TextStyle(
//                                 color: Color(0xFF2F3D4B),
//                                 fontSize: 12,
//                                 fontFamily: 'Barlow Semi Condensed',
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             TextSpan(
//                               text: 'Responsable',
//                               style: TextStyle(
//                                 color: Color(0xFF2F3D4B),
//                                 fontSize: 12,
//                                 fontFamily: 'Barlow Semi Condensed',
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             TextSpan(
//                               text: ' : $responsible',
//                               style: TextStyle(
//                                 color: Color(0xFF2F3D4B),
//                                 fontSize: 12,
//                                 fontFamily: 'Barlow Semi Condensed',
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String orderNumber;
  final String amount;
  final String responsible;
  final void Function() onAccept;
  final void Function() onReject;

  const OrderCard({
    Key? key,
    required this.orderNumber,
    required this.amount,
    required this.responsible,
    required this.onAccept,
    required this.onReject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(orderNumber), // Unique key for each order
      background: Container(
        color: Colors.green,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20.0),
        child: Icon(Icons.check, color: Colors.white),
      ),
      secondaryBackground: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20.0),
        child: Icon(Icons.close, color: Colors.white),
      ),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          onAccept();
        } else if (direction == DismissDirection.endToStart) {
          onReject();
        }
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Numéro : $orderNumber',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Montant : $amount',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Responsable Sur La Validation: $responsible',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
