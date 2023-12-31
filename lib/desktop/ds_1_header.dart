import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../theme/app_theme.dart';
import '../widgets/nav_bar.dart';
import '../widgets/social_profiles.dart';

class DS1Header extends StatelessWidget {
  const DS1Header({Key? key}) : super(key: key);

  List<Widget> headerData() {
    return [
      CircleAvatar(
        backgroundColor: Color.fromARGB(255, 1, 32, 45),
        radius: 100,
        child: ClipOval(
          child: Image.asset(
            'assets/images/logo.png',
            height: 200.0,
            width: 200.0,
            fit: BoxFit.cover, // Adjust BoxFit as needed
          ),
        ),
      ),
      const SizedBox(width: 60.0),
      Column(
        children: [
          SelectableText(
            DataValues.headerGreetings,
            style: AppThemeData.darkTheme.textTheme.headlineSmall,
          ),
          SelectableText(
            DataValues.headerName,
            style: AppThemeData.darkTheme.textTheme.displayMedium,
          ),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.titleLarge,
          ),
          const SizedBox(height: 20.0),
          const SocialProfiles(),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 1, 32, 45),
        image: DecorationImage(
          image: AssetImage(
              'assets/images/back.png'), // Replace with the path to your image asset
          fit: BoxFit.contain, // Adjust the BoxFit as needed
          alignment: Alignment.bottomRight,
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: headerData(),
              ),
              const SizedBox(height: 60.0),
              NavBar().desktopNavBar(),
            ],
          )),
    );
  }
}
