import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class DynamiclistItemWidget extends StatelessWidget {
  const DynamiclistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      color: appTheme.gray800,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 64.v,
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 64.v,
                width: 52.h,
                decoration: AppDecoration.fillGreenA,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 64.v,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle35,
                    height: 64.v,
                    width: 18.h,
                    alignment: Alignment.centerRight,
                  ),
                  Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: appTheme.gray200,
                                width: 1.h,
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Container(
                              height: 64.v,
                              width: double.maxFinite,
                              decoration: AppDecoration.outlineGray,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgThumbsUp,
                                    height: 64.v,
                                    width: 58.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    decoration: AppDecoration.fillWhiteA,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Container(
                                          width: 194.h,
                                          margin: EdgeInsets.only(left: 8.h),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Numéro",
                                                  style: CustomTextStyles
                                                      .labelLargeMedium,
                                                ),
                                                TextSpan(
                                                  text: " : FA-111 \n",
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                                TextSpan(
                                                  text: "Montant",
                                                  style: CustomTextStyles
                                                      .labelLargeMedium,
                                                ),
                                                TextSpan(
                                                  text: " : 10000,0000\n",
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                                TextSpan(
                                                  text: "Résponsable",
                                                  style: CustomTextStyles
                                                      .labelLargeMedium,
                                                ),
                                                TextSpan(
                                                  text:
                                                      " sur la validation: Yassine",
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                )
                                              ],
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Divider(),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
