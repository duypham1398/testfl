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
  int _currentIndex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 27),
        width: double.infinity,
        child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                height: size.height * 1 / 10,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  '"It is amazing how complete is the delusion that beauty is goodness"',
                  style: AppStyle.h5
                      .copyWith(fontSize: 14, color: AppColors.textBlack),
                )),
            Container(
              height: size.height * 2 / 3,
              // color: AppColors.primaryColor,
              child: PageView.builder(
                controller: _pageController,
                  onPageChanged: (index){
                  setState(() {
                    _currentIndex = index;
                  });
                  },
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.all(8),
                            child: Image.asset(AppAssets.heart),
                          ),
                          RichText(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'B',
                                style: TextStyle(
                                    fontFamily: FontFamily.sen,
                                    fontSize: 89,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          offset: Offset(0, 4))
                                    ]),
                              ),
                              TextSpan(
                                  text: 'eautiful',
                                  style: TextStyle(
                                    fontSize: 64,
                                    fontFamily: FontFamily.sen,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Text(
                              '"Think of all the beauty still left around you and be happy"',
                              style: TextStyle(
                                  fontFamily: FontFamily.sen,
                                  fontSize: 28,
                                  color: AppColors.textBlack),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),

            // indicator
            SizedBox(
              height: size.height * 1/14,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 24),
                alignment: Alignment.center,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return buildIndicator(index == _currentIndex, size);
                      })),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(AppAssets.exchange),
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 8,
      // margin: const EdgeInsets.symmetric(vertical: 12),
      width: isActive ? size.width * 1 / 5 : 24,
      decoration: BoxDecoration(
          color: isActive ? AppColors.navColor : AppColors.tabColor,
          borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, offset: Offset(2, 3), blurRadius: 3)
          ]),
    );
  }
}
