import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:responsive/components/my_textfield.dart';
import 'package:responsive/constants.dart';

class FormScafford extends StatefulWidget {
  const FormScafford({Key? key}) : super(key: key);

  @override
  State<FormScafford> createState() => _FormScaffordState();
}

class _FormScaffordState extends State<FormScafford> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController bookingDateController = TextEditingController();
  TextEditingController foodTypeController = TextEditingController();
  TextEditingController adultController = TextEditingController();
  TextEditingController childController = TextEditingController();

  double calculateTotalAmount() {
    final adultPrice = 999;
    final childPrice = 499.5;
    final adultCount = int.tryParse(adultController.text) ?? 0;
    final childCount = int.tryParse(childController.text) ?? 0;

    final adultAmount = adultCount * adultPrice;
    final childAmount = childCount * childPrice;

    return adultAmount + childAmount;
  }

  void submitForm() async {
    // Create a Map to hold the form data
    Map<String, dynamic> formData = {
      'fullName': fullNameController.text,
      'mobile': mobileController.text,
      'email': emailController.text,
      'address': addressController.text,
      'bookingDate': bookingDateController.text,
      'foodType': foodTypeController.text,
      'adult': adultController.text,
      'child': childController.text,
    };

    // Make a POST request to the API endpoint
    try {
      var response =
          await http.post(Uri.parse('your_api_endpoint_here'), body: formData);

      // Handle the response from the API
      if (response.statusCode == 200) {
        // Request successful
        print('Form submitted successfully');
      } else {
        // Request failed
        print('Form submission failed');
      }
    } catch (e) {
      print('Error submitting form: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final maxWidth = constraints.maxWidth;
            final isTablet = maxWidth > 600;

            return SingleChildScrollView(
              child: Column(
                children: [
                  // Full Name field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Full Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      MyTextField(
                        controller: fullNameController,
                        hintText: 'Full Name',
                        obscureText: false,
                      ),
                    ],
                  ),

                  // Mobile field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Mobile',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      MyTextField(
                        controller: mobileController,
                        hintText: 'Mobile',
                        obscureText: false,
                      ),
                    ],
                  ),

                  // Email field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      MyTextField(
                        controller: emailController,
                        hintText: 'Email',
                        obscureText: false,
                      ),
                    ],
                  ),

                  // Address field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Address',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      MyTextField(
                        controller: addressController,
                        hintText: 'Address',
                        obscureText: false,
                      ),
                    ],
                  ),

                  // Booking Date field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Booking Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      MyTextField(
                        controller: bookingDateController,
                        hintText: 'Booking Date',
                        obscureText: false,
                      ),
                    ],
                  ),

                  // Food Type field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Booking Date',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      MyTextField(
                        controller: foodTypeController,
                        hintText: 'Food Type',
                        obscureText: false,
                      ),
                    ],
                  ),

                  // Adult field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Adult',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      MyTextField(
                        controller: adultController,
                        hintText: 'Adult',
                        obscureText: false,
                      ),
                    ],
                  ),

                  // Child field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Text(
                          'Child',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      MyTextField(
                        controller: childController,
                        hintText: 'Child',
                        obscureText: false,
                      ),
                    ],
                  ),

                  // Total Amount
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                        'Total Amount: ${calculateTotalAmount().toStringAsFixed(2)}'),
                  ),
                  GestureDetector(
                    onTap: submitForm
                    ,
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
