// import 'package:flutter/material.dart';

// // ignore: unused_import
// import '../../../core/app_export.dart';
//  // ignore: must_be_immutable

// class PricerequestsgridItemWidget extends StatelessWidget {
//   const PricerequestsgridItemWidget({Key? key})
//       : super(
//           key: key,
//         );

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       height: 136.v,
// //       child: Stack(
// //         alignment: Alignment.center,
// //         children: [
// //           Align(
// //             alignment: Alignment.bottomRight,
// //             child: Padding(
// //               padding: EdgeInsets.only(
// //                 left: 10.h,
// //                 bottom: 10.v,
// //               ),
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     "Demandes de prix",
// //                     style: theme.textTheme.titleMedium,
// //                   ),
// //                   SizedBox(height: 8.v),
// //                   SizedBox(
// //                     width: double.maxFinite,
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Padding(
// //                           padding: EdgeInsets.only(bottom: 10.v),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 "65",
// //                                 style: theme.textTheme.displayMedium,
// //                               ),
// //                               SizedBox(height: 12.v),
// //                               Text(
// //                                 "31 622 634,16",
// //                                 style: theme.textTheme.bodyMedium,
// //                               )
// //                             ],
// //                           ),
// //                         ),
// //                         CustomImageView(
// //                           imagePath: ImageConstant.imgArrowRight,
// //                           height: 40.adaptSize,
// //                           width: 40.adaptSize,
// //                           alignment: Alignment.bottomCenter,
// //                         )
// //                       ],
// //                     ),
// //                   )
// //                 ],
// //               ),
// //             ),
// //           ),
// //           Container(
// //             width: double.maxFinite,
// //             padding: EdgeInsets.symmetric(
// //               horizontal: 6.h,
// //               vertical: 10.v,
// //             ),
// //             decoration: AppDecoration.fillBluegray700.copyWith(
// //               borderRadius: BorderRadiusStyle.roundedBorder10,
// //             ),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 SizedBox(height: 10.v),
// //                 Padding(
// //                   padding: EdgeInsets.only(left: 2.h),
// //                   child: Text(
// //                     "Demandes de prix",
// //                     style: theme.textTheme.titleMedium,
// //                   ),
// //                 ),
// //                 SizedBox(height: 8.v),
// //                 Container(
// //                   width: double.maxFinite,
// //                   margin: EdgeInsets.only(left: 2.h),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Padding(
// //                         padding: EdgeInsets.only(bottom: 10.v),
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Text(
// //                               "65",
// //                               style: theme.textTheme.displayMedium,
// //                             ),
// //                             SizedBox(height: 12.v),
// //                             Text(
// //                               "31 622 634,16",
// //                               style: theme.textTheme.bodyMedium,
// //                             )
// //                           ],
// //                         ),
// //                       ),
// //                       CustomImageView(
// //                         imagePath: ImageConstant.imgArrowRight,
// //                         height: 40.adaptSize,
// //                         width: 40.adaptSize,
// //                         alignment: Alignment.bottomCenter,
// //                       )
// //                     ],
// //                   ),
// //                 )
// //               ],
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
// //  @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         Container(
// //           width: 168,
// //           height: 137,
// //           child: Stack(
// //             children: [
// //               Positioned(
// //                 left: 10,
// //                 top: 29,
// //                 child: Text(
// //                   'Demandes de prix',
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 19,
// //                     fontFamily: 'Barlow Semi Condensed',
// //                     fontWeight: FontWeight.w700,
// //                     height: 0,
// //                     letterSpacing: 0.38,
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 10,
// //                 top: 67,
// //                 child: Text(
// //                   '65',
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 40,
// //                     fontFamily: 'Barlow Semi Condensed',
// //                     fontWeight: FontWeight.w700,
// //                     height: 0,
// //                     letterSpacing: 0.80,
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 10,
// //                 top: 106,
// //                 child: Text(
// //                   '31 622 634,16',
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 15,
// //                     fontFamily: 'Barlow Semi Condensed',
// //                     fontWeight: FontWeight.w300,
// //                     height: 0,
// //                     letterSpacing: 0.30,
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 121,
// //                 top: 86,
// //                 child: Container(
// //                   width: 40,
// //                   height: 40,
// //                   child: Stack(
// //                     children: [
// //                       Positioned(
// //                         left: 0,
// //                         top: 0,
// //                         child: Container(
// //                           width: 40,
// //                           height: 40,
// //                           decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 0,
// //                 top: 0,
// //                 child: Container(
// //                   width: 168,
// //                   height: 137,
// //                   decoration: ShapeDecoration(
// //                     color: Color(0xFF555A71),
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 10,
// //                 top: 29,
// //                 child: Text(
// //                   'Demandes de prix',
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 19,
// //                     fontFamily: 'Barlow Semi Condensed',
// //                     fontWeight: FontWeight.w700,
// //                     height: 0,
// //                     letterSpacing: 0.38,
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 10,
// //                 top: 67,
// //                 child: Text(
// //                   '65',
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 40,
// //                     fontFamily: 'Barlow Semi Condensed',
// //                     fontWeight: FontWeight.w700,
// //                     height: 0,
// //                     letterSpacing: 0.80,
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 10,
// //                 top: 106,
// //                 child: Text(
// //                   '31 622 634,16',
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 15,
// //                     fontFamily: 'Barlow Semi Condensed',
// //                     fontWeight: FontWeight.w300,
// //                     height: 0,
// //                     letterSpacing: 0.30,
// //                   ),
// //                 ),
// //               ),
// //               Positioned(
// //                 left: 121,
// //                 top: 86,
// //                 child: Container(
// //                   width: 40,
// //                   height: 40,
// //                   child: Stack(
// //                     children: [
// //                       Positioned(
// //                         left: 0,
// //                         top: 0,
// //                         child: Container(
// //                           width: 40,
// //                           height: 40,
// //                           decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 236, // Adjust the height as needed
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Positioned(
//             left: 10,
//             bottom: 10,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Demandes de prix",
//                   style: Theme.of(context).textTheme.titleMedium,
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "65",
//                           style: Theme.of(context).textTheme.displayMedium,
//                         ),
//                         SizedBox(height: 12),
//                         Text(
//                           "31 622 634,16",
//                           style: Theme.of(context).textTheme.bodyMedium,
//                         ),
//                       ],
//                     ),
                   
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Positioned.fill(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
//               decoration: BoxDecoration(
//                 color: Color(0xFF555A71),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 10),
//                   Text(
//                     "Demandes de prix",
//                     style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                       color: Colors.white,
//                       fontSize: 19,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "65",
//                             style: Theme.of(context).textTheme.displayMedium?.copyWith(
//                               color: Colors.white,
//                               fontSize: 40,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           SizedBox(height: 12),
//                           Text(
//                             "31 622 634,16",
//                             style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                               color: Colors.white,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w300,
//                             ),
//                           ),
//                         ],
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           // Handle onPressed event here
//                           print('CustomImageView pressed');
//                         },
//                         child: CustomImageView(
//                           imagePath: ImageConstant.imgArrowRight,
//                           height: 35.adaptSize,
//                           width: 35.adaptSize,
//                           alignment: Alignment.bottomCenter,
//                         ),
//                       )

//                       // Container(
//                       //   width: 40,
//                       //   height: 40,
//                       //   color: Color(0xFFD9D9D9),
//                       // ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

// ignore: unused_import
import '../../../core/app_export.dart';

class PricerequestsgridItemWidget extends StatelessWidget {
  final String title;
  final String number;
  final String value;

  const PricerequestsgridItemWidget({
    Key? key,
    required this.title,
    required this.number,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236, // Adjust the height as needed
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          number,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        SizedBox(height: 12),
                        Text(
                          value,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFF555A71),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            number,
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            value,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle onPressed event here
                          print('CustomImageView pressed');
                        },
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                          alignment: Alignment.bottomCenter,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PricerequestsGridScreen extends StatelessWidget {
  final List<Map<String, String>> gridData = [
    {
      'title': 'Demandes de prix 1',
      'number': '65',
      'value': '31 622 634,16',
    },
    {
      'title': 'Demandes de prix 2',
      'number': '23',
      'value': '15 120 422,35',
    },
    {
      'title': 'Demandes de prix 3',
      'number': '78',
      'value': '22 345 123,78',
    },
    {
      'title': 'Demandes de prix 4',
      'number': '12',
      'value': '8 987 654,00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pricerequests Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: gridData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1.0,
          ),
          itemBuilder: (context, index) {
            final data = gridData[index];
            return PricerequestsgridItemWidget(
              title: data['title']!,
              number: data['number']!,
              value: data['value']!,
            );
          },
        ),
      ),
    );
  }
}
