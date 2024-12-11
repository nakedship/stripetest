// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_stripe/flutter_stripe.dart';

Future<void> initPaymentSheet(BuildContext context, dynamic jsonData) async {
  try {
    // Convert JSON input into a Map
    final data = Map<String, dynamic>.from(jsonData);

    // 1. Validate that the required data is present
    if (data['paymentIntent'] == null ||
        data['ephemeralKey'] == null ||
        data['customer'] == null) {
      throw Exception('Missing required payment information in data');
    }

    // 2. Initialize the payment sheet
    Stripe.publishableKey =
        'pk_test_51PtCva04MdCe4EFsjOecxH703hg1wjsL2WuMa1k6LJ1SGKDQEMP7gkZR2O3cJv3RZJe7j5WR8Nf3kNEn6NjEYoja00ma4Gf9gE'; // Replace with your actual key
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        // Set to true for custom flow
        customFlow: false,
        // Main params
        merchantDisplayName: 'Flutter Stripe Store Demo',
        paymentIntentClientSecret: data['paymentIntent'],
        // Customer keys
        customerEphemeralKeySecret: data['ephemeralKey'],
        customerId: data['customer'],
        // Extra options
        //applePay: const PaymentSheetApplePay(
        //  merchantCountryCode: 'US',
        //),
        //googlePay: const PaymentSheetGooglePay(
        //  merchantCountryCode: 'US',
        //  testEnv: true,
        //),
        style: ThemeMode.dark,
      ),
    );

    // Log success or take action if needed
    print('Payment sheet initialized successfully');
  } catch (e) {
    // Display error using context
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $e')),
    );
    rethrow;
  }
}
