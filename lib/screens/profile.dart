import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_allipe_pro_profile/screens/content_page.dart';
import 'package:flutter_allipe_pro_profile/screens/my_files.dart';
import 'package:flutter_allipe_pro_profile/screens/our_coureses.dart';
import 'package:flutter_allipe_pro_profile/widgets/app_icon.dart';
import 'package:gap/gap.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 45, right: 70, left: 105),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 25,
                      ),
                    ),
                    AppIcon(
                      AppIcons.MoreVertical,
                      size: 20,
                    ),
                  ],
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Адель Эсенгулова',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Gap(17),
                    AppIcon(
                      AppIcons.Vector,
                      size: 15,
                    ),
                  ],
                )
              ],
            ),
          ),
          toolbarHeight: 250),
      body: ContainedTabBarView(
        tabs: const [
          AppIcon(AppIcons.elementPlus),
          AppIcon(AppIcons.hh),
          AppIcon(AppIcons.folder),
        ],
        tabBarProperties: const TabBarProperties(
          padding: EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        ),
        views: const [ContentPage(), OurCoureses(), MyFiles()],
        onChange: (index) => print(index),
      ),
    );
  }
}
