import 'package:flutter/material.dart';
import 'package:webview_template/configuration.dart';
import 'package:webview_template/widgets/custom_text.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView(this.index, {super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.sizeOf(context).height * 0.5,
            padding: const EdgeInsets.all(10),
            child: AppData.onBoardingList[index]['imagePath'] != ''
                ? Image.asset(AppData.onBoardingList[index]['imagePath'])
                : Image.network(AppData.onBoardingList[index]['imageUrl']),
          ),
          CustomText(
            text: '${AppData.onBoardingList[index]['title']}',
            textAlign: TextAlign.start,
            color: AppColors.heading,
            height: 1.1,
            fontSize: 33,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 20),
          CustomText(
            text: '${AppData.onBoardingList[index]['description']}',
            textAlign: TextAlign.start,
            fontFamily: 'outfit',
            color: AppColors.text,
            height: 1,
            maxLines: 6,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
