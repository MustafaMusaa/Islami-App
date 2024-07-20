import 'package:flutter/material.dart';
import 'package:islami/Home/Hadeth/HadethTab.dart';
import 'package:islami/Home/Quran/QuranTab.dart';
import 'package:islami/Home/Radio/RadioTab.dart';
import 'package:islami/Home/Sebha/SebhaTab.dart';
import 'package:islami/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/bg3.png'),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(
                        'assets/images/quran-quran-svgrepo-com.png')),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: 'Radio'),
              ],
            ),
          ),
          body: Tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> Tabs = [Qurantab(), Hadethtab(), Sebhatab(), Radiotab()];
}
