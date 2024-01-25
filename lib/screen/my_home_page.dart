import 'package:flutter/material.dart';
import 'package:sample_ui/data/dummy.dart';
import 'package:sample_ui/screen/widget/feature_item.dart';
import 'package:sample_ui/screen/widget/rating_widget.dart';
import 'package:sample_ui/screen/widget/start_free_widget.dart';

part 'widget/bottom_widget.dart';
part 'widget/footer_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 32,),
                    const Center(
                      child: Text(
                        "Try Super Greg For Free",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Unlock everything\nhappy plants need.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.w800
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListView.builder(
                        itemCount: data.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index)
                        => FeatureItem(featureModel: data[index])
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Center(
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset(
                          'assets/images/tree.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Center(
                      child: Text(
                        "Start a Free 7-Day Trial",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                    ),
                    StartFreeWidget(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 100,
                                  child: Image.asset(
                                    'assets/images/rice.png',
                                  ),
                                ),
                                const Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Icon(Icons.apple_outlined, color: Colors.grey, size: 20,),
                                      Text(
                                        "App of the \nDay.",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                        Expanded(
                            flex: 1,
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 100,
                                  child: Image.asset(
                                    'assets/images/rice.png',
                                  ),
                                ),
                                const Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Icon(Icons.apple_outlined, color: Colors.grey, size: 20,),
                                      Text(
                                        "Must-Have \nLifestyle App.",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const RatingWidget(),
                    const FooterWidget()
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: InkWell(
                        child: ClipOval(
                            child: ColoredBox(
                              color: Colors.white.withOpacity(0.5),
                              child: const Icon(Icons.close, size: 28),
                            )
                        ),
                      ),
                    )
                )
            ),
            BottomWidget(height: MediaQuery.of(context).size.height*0.2,)
          ],
        ),
      )
    );
  }
}
