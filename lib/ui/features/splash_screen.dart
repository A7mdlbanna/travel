import 'package:flutter/material.dart';
import 'package:travel/data/repositories/auth_repository.dart';
import 'package:travel/ui/resources/app_strings.dart';
import '../resources/app_images_path.dart';
import '../widgets/app_text_display.dart';
import '../widgets/custom_image_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    navigate();
    super.initState();
  }


  AuthRepository authRepository = AuthRepository();
  navigate() async{
    await Future.delayed(Duration(seconds: 2));
    if(authRepository.accessToken == null){
      // pushReplacement(LoginScreen());
    } else {
      // pushReplacement(HomeScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: CustomImageView(
                imagePath: AppImages.logo,
              ),
            ),
            AppText(translation: AppStrings.appName),
          ],
        ),
      ),
    );
  }
}
