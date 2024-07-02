import 'package:flutter/material.dart';

class AppColors {
  // Masukkan warna tema aplikasi yang diinginkan
  // dengan cara memasukkan nama warna setelah Colors
  // contoh: Colors.blue atau Colors.green
  static const Color appThemeColor = Colors.red;

  static const Color heading = Color(0xff1E1E1E);
  static const Color activeBlack = Color(0xff272727);
  static const Color text = Color(0xff545454);
  static Color lightText = const Color(0xff828282).withOpacity(0.15);
  static const Color white = Color(0xffffffff);
}

class AppData {
  // Masukkan nama yang diinginkan, contoh bisa menggunakan nama web
  // atau nama perusahaan
  static String appName = "Nextgen";

  // Masukkan url web
  // contoh: "https://nextgen.co.id/"
  static String appUrl = "https://youtube.com/";

  // Masukkan url whatsapp jika ada
  // contoh: "https://api.whatsapp.com/send?phone=62xxxxxxxx"
  static String whatsappUrl = "";

  // Masukkan data yang sesuai untuk halaman onboarding
  // Jika ingin menambah halaman onboarding bisa membuat data array
  // yang baru didalam array onboardingList di bawah
  // untuk image bisa pilih salah satu,
  // bisa menggunakan image dari url atau dari path local.
  //
  // jika menggunakan image url tinggal memasukkan link url image
  // ke imageUrl seperti contoh array[1] di bawah,
  //
  // jika ingin menggunakan image local bisa
  // memasukkan terlebih dahulu image ke dalam folder assets,
  // lalu memasukkan path seperti contoh array[0] di bawah
  static List onBoardingList = [
    {
      'title': 'ini title 1',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque porttitor ipsum sed arcu imperdiet convallis quis vel velit. Ut euismod enim ac dapibus volutpat. Suspendisse eget odio at turpis feugiat tincidunt. Morbi imperdiet mattis magna ut tempus. Nullam eu euismod mi. Praesent in congue felis. Cras ex augue, ultricies ac feugiat sed, placerat quis est. Proin ipsum lacus, placerat id sem eu, ultrices accumsan dui. Vestibulum quis dictum diam. Nam et varius sem, nec congue mauris. Quisque sollicitudin viverra nisl ut tempus. Praesent hendrerit blandit urna, ut scelerisque ipsum dictum ac. Vestibulum interdum odio id quam volutpat, quis gravida diam gravida. Cras vel risus in mi consequat pharetra. Phasellus in odio neque.',
      'imagePath': 'assets/onboarding1.png',
      'imageUrl': '',
    },
    {
      'title': 'ini title 2',
      'description':
          'Morbi imperdiet mattis magna ut tempus. Nullam eu euismod mi. Praesent in congue felis. Cras ex augue, ultricies ac feugiat sed, placerat quis est. Proin ipsum lacus, placerat id sem eu, ultrices accumsan dui. Vestibulum quis dictum diam. Nam et varius sem, nec congue mauris. Quisque sollicitudin viverra nisl ut tempus. Praesent hendrerit blandit urna, ut scelerisque ipsum dictum ac. Vestibulum interdum odio id quam volutpat, quis gravida diam gravida. Cras vel risus in mi consequat pharetra. Phasellus in odio neque.',
      'imagePath': '',
      'imageUrl':
          'https://img.freepik.com/free-vector/video-blogger-computer-screen-advertising-new-phone-man-posting-vlog-smartphone-review-channel-flat-vector-illustration-technology-marketing-concept-banner-landing-web-page_74855-21080.jpg',
    },
  ];
}
