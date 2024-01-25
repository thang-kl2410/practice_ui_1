import 'package:flutter/material.dart';
import 'package:sample_ui/model/feature_model.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key, required this.featureModel});
  final FeatureModel featureModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, left: 12, bottom: 12),
      child: Row(
        children: [
          featureModel.icon,
          const SizedBox(width: 12,),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    featureModel.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  Wrap(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: (featureModel.content),
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
