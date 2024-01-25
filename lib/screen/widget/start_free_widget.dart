import 'package:flutter/material.dart';

import '../../data/dummy.dart';
import 'feature_item.dart';

class StartFreeWidget extends StatelessWidget {
  StartFreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: MediaQuery.of(context).size.height*0.25,
            width: 3,
            margin: const EdgeInsets.only(left: 55, top: 68),
            color: const Color(0xFFD3F5E1),
          ),
        ),
        ListView.builder(
            itemCount: data2.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index)
            => FeatureItem(featureModel: data2[index])
        ),
      ],
    );
  }
}
