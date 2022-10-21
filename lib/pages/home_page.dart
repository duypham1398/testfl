import 'package:flutter/material.dart';
import 'package:untitled/values/app_assets.dart';
import 'package:untitled/values/app_colors.dart';
import 'package:untitled/values/app_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.page2,
      appBar: AppBar(
        backgroundColor: AppColors.page2,
        elevation: 0,
        title: Text(
          "English today",
          style: AppStyle.h3.copyWith(color: AppColors.textBlack, fontSize: 36),
        ),
        leading: InkWell(
          onTap: () {},
          child: Image.asset(AppAssets.menu),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(AppAssets.exchange),
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
