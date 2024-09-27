import 'package:flutter/material.dart';
import 'package:flutter_dev_uikit/screens/home_screen.dart';
import 'package:lottie/lottie.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // final List<String> imgList = [
    //   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    //   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    //   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    //   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    //   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    //   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    // ];
    final List<Widget> items = [firstSlide(), secondSlide(), thirdSlide()];
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              height: 10,
                              width: currentIndex == 0 ? 20 : 10,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              duration: Duration(milliseconds: 500),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red),
                            ),
                            AnimatedContainer(
                              height: 10,
                              width: currentIndex == 1 ? 20 : 10,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              duration: Duration(milliseconds: 500),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red),
                            ),
                            AnimatedContainer(
                              height: 10,
                              width: currentIndex == 2 ? 20 : 10,
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              duration: Duration(milliseconds: 500),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton.icon(
                            icon: Icon(Icons.chevron_right_rounded),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                            },
                            label: Text('Get Started')),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(flex: 1)
            ],
          ),
        ),
      ),
    );
  }

  Widget firstSlide() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flutter Widgets',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'you know about widgets and its properties',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: LottieBuilder.network(
              'https://lottie.host/7199efa8-94a5-4ea0-ad5b-6f6c2a54b238/w3bd4I0Ahp.json'),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        )
      ],
    );
  }

  Widget secondSlide() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Download',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Source code for specific widget',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                )
              ],
            ),
          ),
        ),
        Expanded(
            flex: 4,
            child: Lottie.network(
                "https://lottie.host/74da317a-50aa-46c7-9b87-4b0733eb1636/36BaNQrkuK.json")),
        Expanded(
          flex: 1,
          child: Container(),
        )
      ],
    );
  }

  Widget thirdSlide() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flutter',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Explore Flutter framework',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                )
              ],
            ),
          ),
        ),
        Expanded(
            flex: 4,
            child: Lottie.network(
                "https://lottie.host/3dcc37c4-9aa4-45b1-8b6c-fa877cbf2ece/xs8OpL56Jf.json")),
        Expanded(
          flex: 1,
          child: Container(),
        )
      ],
    );
  }
}
