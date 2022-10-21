import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/values/app_assets.dart';
import 'package:untitled/values/app_colors.dart';
import 'package:untitled/values/app_styles.dart';

import 'home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.centerLeft,
              child: Text("Welcome to", style: AppStyle.h3),
            )),
            Expanded(
                child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "English",
                    style: AppStyle.h2.copyWith(
                        color: AppColors.blackGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text('Qoutes"',
                        textAlign: TextAlign.right,
                        style: AppStyle.h4.copyWith(height: 0.5)),
                  )
                ],
              ),
            )),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(bottom: 72),
                    child: RawMaterialButton(
                      fillColor: AppColors.backround,
                      shape: CircleBorder(),
                      child: Image.asset(AppAssets.rightarrow),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    )))
          ],
        ),
      ),
    );
  }
}
