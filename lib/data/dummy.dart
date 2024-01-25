import 'package:flutter/material.dart';

import '../model/feature_model.dart';
import '../model/review_model.dart';

final List<FeatureModel> data = [
  FeatureModel(
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(15)
        ),
        child: const Icon(Icons.notifications, color: Colors.white,),
      ),
      title: 'Smart Watering Reminders',
      content: 'Receive a notification when each of your plans is ready for watering.'
  ),
  FeatureModel(
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(15)
        ),
        child: const Icon(Icons.book, color: Colors.white,),
      ),
      title: '360 Guides',
      content: '10+ guides for light, fertilizer, propagation and much more.'
  ),
  FeatureModel(
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(15)
        ),
        child: const Icon(Icons.water_rounded, color: Colors.white,),
      ),
      title: 'Smart Fertilizer Reminders',
      content: 'Receive a notification when you plants are ready for a nutrient boost!'
  ),
  FeatureModel(
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(15)
        ),
        child: const Icon(Icons.water_drop, color: Colors.white,),
      ),
      title: 'Precision Watering',
      content: 'Find out how much H2O each plant needs and never overwater again!'
  ),
  FeatureModel(
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(15)
        ),
        child: const Icon(Icons.search, color: Colors.white,),
      ),
      title: 'Plant Identification',
      content: 'Discover the spicies & basic needs of each plant in your collection.'
  ),
  FeatureModel(
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.orangeAccent.shade100,
            borderRadius: BorderRadius.circular(15)
        ),
        child: const Icon(Icons.sunny_snowing, color: Colors.white,),
      ),
      title: 'Indoor Light Gauge',
      content: 'Ensure that all your plants getting enough sunshine to thrive.'
  ),
  FeatureModel(
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(15)
        ),
        child: const Icon(Icons.energy_savings_leaf_outlined, color: Colors.white,),
      ),
      title: 'Seasonal Updates',
      content: 'Get plants care recs that adapt as the weather in your area changes.'
  ),
  FeatureModel(
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(15)
        ),
        child: const Icon(Icons.medical_information, color: Colors.white,),
      ),
      title: 'Expert Health Checks',
        content: 'Take a photo, ask the question, and get a response in 24 hours or less.'
  ),
];

final List<FeatureModel> data2 = [
  FeatureModel(
      icon: ClipOval(
        child: Container(
          height: 88,
          width: 88,
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(15)
          ),
          child: const Center(
            child: Text(
              "Today",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w800
              ),
            ),
          ),
        ),
      ),
      title: 'Get Instant Access',
      content: 'See if your plants have all they need to flourish.'
  ),
  FeatureModel(
      icon: ClipOval(
        child: Container(
            height: 88,
            width: 88,
            decoration: BoxDecoration(
                color: const Color(0xFFD3F5E1),
                borderRadius: BorderRadius.circular(15)
            ),
            child: const Center(
              child: Text(
                "Day 5",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.w800
                ),
              ),
            ),
        ),
      ),
      title: 'Trial Reminder Sent',
      content: "We'll ping you before the Trial ends, in case in case your want to cancel."
  ),
  FeatureModel(
      icon: ClipOval(
        child: Container(
            height: 88,
            width: 88,
            decoration: BoxDecoration(
                color: const Color(0xFFD3F5E1),
                borderRadius: BorderRadius.circular(15)
            ),
            child: const Center(
              child: Text(
                "Day 7",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.w800
                ),
              ),
            ),
        ),
      ),
      title: 'Subscription Begins',
      content: "Your subscription starts Jul 4, 2022. Let's get growing."
  ),
];

final List<ReviewModel> reviews = [
  ReviewModel(
      name: "They're ALIVE",
      content: "First time I've never killed my plants. Thank you, Greg. \n-Plant newbie",
      rating: 5.0
  ),
  ReviewModel(
      name: "OMG!",
      content: "This app is phenomenal! I am far from a beginner, having grown plants for 40 plus years. "
          "But this app make me a better grower. Thanks Greg, you are phenomenal. \n-Ted's3",
      rating: 5.0
  ),
  ReviewModel(
      name: "There's no better plant app!",
      content: "Greg is superior to all the plant apps out there. This is my favourite on my phone. A must have plant lover!",
      rating: 5.0
  ),
  ReviewModel(
      name: "Brilliant job.",
      content: "Legit, the best plant app on the market. I've never been using since their launch and it truly has gotten better"
          "with every update. The information is extremely helpful and watering rhythm's rock!"
          "\n-Gracegrowns",
      rating: 5.0
  )
];