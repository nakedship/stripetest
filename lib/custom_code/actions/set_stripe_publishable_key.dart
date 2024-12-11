// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_stripe/flutter_stripe.dart';

Future<void> setStripePublishableKey() async {
  // Set your Stripe Publishable Key here
  Stripe.publishableKey =
      'pk_test_51PtCva04MdCe4EFsjOecxH703hg1wjsL2WuMa1k6LJ1SGKDQEMP7gkZR2O3cJv3RZJe7j5WR8Nf3kNEn6NjEYoja00ma4Gf9gE'; // Replace with your actual key

  // Optionally, apply settings if needed
  //await Stripe.instance.applySettings();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
