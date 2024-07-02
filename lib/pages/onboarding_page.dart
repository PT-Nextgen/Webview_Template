import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webview_template/configuration.dart';
import 'package:webview_template/pages/main_page.dart';
import 'package:webview_template/widgets/onboarding_view.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController controller = PageController(initialPage: 0);

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.8,
            child: PageView(
              controller: controller,
              children: List.generate(AppData.onBoardingList.length,
                  (index) => OnboardingView(index)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SmoothPageIndicator(
                    controller: controller, // PageController
                    count: AppData.onBoardingList.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 22,
                      activeDotColor: AppColors.heading,
                      radius: 100,
                      dotColor: AppColors.lightText,
                    ), // your preferred effect
                    onDotClicked: (index) {}),
                const SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();

                          await prefs.setInt("initScreen", 1);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (builder) => MainPage(
                                  url: AppData.appUrl,
                                ),
                              ),
                              (route) => false);
                        },
                        child: const Text(
                          'Mulai',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        controller.jumpToPage(
                          AppData.onBoardingList.length,
                        );
                      },
                      child: Text('Lewati'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
