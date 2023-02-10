import 'package:flutter/material.dart';
import 'package:flutter_provider_bottom_naviagate/bottom_navigation_bar_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Widget> screens = const[Screen1(), Screen2(), Screen3(), Screen4()];

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarProvider screenindexprovider =
        Provider.of<BottomNavigationBarProvider>(context);
    int currentScreenIndex = screenindexprovider.currentScreen;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          showSelectedLabels: false,
          elevation: 1.5,
          currentIndex: currentScreenIndex,
          onTap: (value) => screenindexprovider.updateScreenIndex(value),
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: Icon((currentScreenIndex == 0)
                    ? Icons.home
                    : Icons.home_outlined),
                backgroundColor: Colors
                    .indigo // provide color to any one icon as it will overwrite the whole bottombar's color ( if provided any )
                ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon((currentScreenIndex == 1)
                  ? Icons.search
                  : Icons.search_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon((currentScreenIndex == 2)
                  ? Icons.favorite
                  : Icons.favorite_outline),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon((currentScreenIndex == 3)
                  ? Icons.person
                  : Icons.person_outline),
            ),
          ],
        ),
        body: screens[currentScreenIndex]);
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Screen 1'));
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Screen 2'));
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Screen 3'));
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Screen 4'));
  }
}
