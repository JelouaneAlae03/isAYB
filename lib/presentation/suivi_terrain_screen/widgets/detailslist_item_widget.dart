// import 'package:flutter/material.dart';
// import '../../../core/app_export.dart'; // ignore: must_be_immutable

// class DetailslistItemWidget extends StatelessWidget {
//   const DetailslistItemWidget({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12.h),
//       decoration: AppDecoration.fillWhiteA.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Container(
//             width: 110.h,
//             margin: EdgeInsets.only(top: 6.v),
//             child: RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: "Projet",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: " : FA-111 \n",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "Demandeur",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: " : ",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "Alae Test\n",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "Destinataire",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: ": Yassine",
//                     style: theme.textTheme.labelLarge,
//                   )
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           SizedBox(
//             width: 142.h,
//             child: RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: "Validation",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: " : ",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "validé\n",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "Date livraison",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: " : ",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "11/11/2023\n",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "Date traitement ",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: ": 01/11/2023",
//                     style: theme.textTheme.labelLarge,
//                   )
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import '../../../core/app_export.dart'; // ignore: must_be_immutable

// class DetailslistItemWidget extends StatelessWidget {
//   final String projet;
//   final String demandeur;
//   final String destinataire;
//   final String validation;
//   final String dateLivraison;
//   final String dateTraitement;

//   const DetailslistItemWidget({
//     Key? key,
//     required this.projet,
//     required this.demandeur,
//     required this.destinataire,
//     required this.validation,
//     required this.dateLivraison,
//     required this.dateTraitement,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12.h),
//       decoration: AppDecoration.fillWhiteA.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Container(
//             width: 110.h,
//             margin: EdgeInsets.only(top: 6.v),
//             child: RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: "Projet",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: " : $projet \n",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "Demandeur",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: " : ",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "$demandeur\n",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "Destinataire",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: ": $destinataire",
//                     style: theme.textTheme.labelLarge,
//                   )
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           SizedBox(
//             width: 142.h,
//             child: RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: "Validation",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: " : ",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "$validation\n",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "Date livraison",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: " : ",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "$dateLivraison\n",
//                     style: theme.textTheme.labelLarge,
//                   ),
//                   TextSpan(
//                     text: "Date traitement ",
//                     style: CustomTextStyles.labelLargeMedium,
//                   ),
//                   TextSpan(
//                     text: ": $dateTraitement",
//                     style: theme.textTheme.labelLarge,
//                   )
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // Assurez-vous que ce chemin est correct

class DetailslistItemWidget extends StatelessWidget {
  final String projet;
  final String demandeur;
  final String destinataire;
  final String validation;
  final String dateLivraison;
  final String dateTraitement;

  const DetailslistItemWidget({
    Key? key,
    required this.projet,
    required this.demandeur,
    required this.destinataire,
    required this.validation,
    required this.dateLivraison,
    required this.dateTraitement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.white, // Changer la couleur si nécessaire
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [ // Ajout d'une ombre pour un meilleur visuel
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // décalage de l'ombre
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start, // Alignement en haut
        children: [
          Expanded(
            flex: 1,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Projet: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Couleur du texte
                    ),
                  ),
                  TextSpan(
                    text: "$projet\n",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "Demandeur: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "$demandeur\n",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "Destinataire: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "$destinataire",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: 180.0, // Ajustez la largeur selon vos besoins
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Validation: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "$validation\n",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "Date Livraison: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "$dateLivraison\n",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "Date Traitement: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "$dateTraitement",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
