import 'package:flutter/material.dart';
import 'package:gecimmoa/presentation/log_in_screen/log_in_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGetStarted,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 52.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup15,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 34.v),
                    SizedBox(
                      width: 250.h,
                      child: Text(
                        "Logiciel de gestion \ndes achats".toUpperCase(),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.displayMedium_1,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      width: 350.h,
                      margin: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "frais généraux, prestations diverses et matières premières adaptée à vos besoins"
                            .toUpperCase(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 10.v),
                     SizedBox(height: 10.v),
                      CustomElevatedButton(
                      text: "GET STARTED".toUpperCase(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>LogInScreen()),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
