import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String? selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Payment',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment available',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildPaymentOption(
              'Paypal',
              'https://s3-alpha-sig.figma.com/img/66f1/4d75/7ddde9d5c6ef68750e82151eab79d1b8?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=X9bLeuZSbuP-uwlmf8YxIG6rS58RnqD5CJrxaSipGgLQzdYHxeko65VnNJzs4azykoh-~zO3MCOSIMJZhrsa2pgSsa4F8CEYtx9wwgKtdtUuHPQP3NVgbf6tNJnm54cCphCAaqNBUE8Ey6oShj8F~~NEgPnkqAM~zSUZsMZ4QUd0oElYB6dijjMGwFyEIg1AwaXqzkTxLFVR4UtzCwoJjy6cZMH2xD23rEJhtKgR5EaF0ZMjtil0PfRL4qREO6~Eua0ydGKccCyG8IpoBtu7WjXfqsGzuuXm37Wx9QvKpyMSzPt3pTwEbMdxkcd7d0C9~suSc8kk-U4AG3wuGsme0g__',
            ),
            _buildPaymentOption(
              'Googlepay',
              'https://s3-alpha-sig.figma.com/img/5e0d/cc50/0cb0228a433c85df0a260dcd90345c62?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=QWxGIWtzFCr8BQLsVA6I3d71d5PeFgFI3ccexEA~dCyjr~DAj9b7MCK4BXF~LTs-8GOjOCm9K8dTiI80L7juj0sePIK4jHxOLEtVvWmS2FBFWP24y9VaQfUIgxCNDMKNjklR0FLxBstM4lTKaxKVeX8wpNqRBXCf0pYT1xjYszf8mpTaOOtqWh2~t9YrA64dcuAeFe57AntfajLQpZxEM1Lt76mcOrY5okMUS2-680Ij5kG-y0SSsxdKjVDHnpHWBxqkba4DyVvKhNDzXL8LRCj73HXERGrS3oS349NYnjXhtrPv4CvGah52xV6cX02njTjZ0~DllzvldDhZ7vzquQ__',
            ),
            _buildPaymentOption(
              'Danapay',
              'https://s3-alpha-sig.figma.com/img/7099/0bc1/bc533e35cd755d4834fe03901929a0c1?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ZW03uINVep2~yPgno5Xs59ns7HNiEec1WsoM5yQ~XjjhfZFmhYL09iTl5LyR3YzczN13NbXR3zZnoCuypOH0Vn4RWCgs1jEURO0uK6N-2YpJNStOHO7Z~7k84a1AB9dabuHLWtwkjfXpdEX2ITIHAGkJBg5MDc6LLmU7QWV5I68Y2qmiJAjtrxtrohLLhwNRJnKyuDq~Av98WPw~lGmq970cm3VjeAzlORfrwsf511wzzkqKEQcqbHXmckZICNidQOk~9HsqQ6HsNRO~B~wqfj0jtwHe5nmcvA~SfOVbClwbZ3ylG9CIIgHLcMONNI3xVWJO~IxQRqn6qV09U1X5PA__',
            ),
            _buildPaymentOption(
              'Gopay',
              'https://s3-alpha-sig.figma.com/img/d085/567a/d59d70d18f55002b2199448947e83c15?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=luZ~9O8erFjru7wRdTJkUaCZj8r9EmYEsVtMeIjFNccgGzdZJwuU9okC2vAS-NGLW8bPWVOz9ZyLzSYaT73buUsg07KOuMe8oqzlSq-QTgA9yTMZ5UBTC971y4XRSGIvnX40S5Czxe6GsSW7wFwfqvjqoBuKf4zDYT-NVF3b6wQYGYOHjkgNQM~g49yqmkXIlA2x3nPuPqANs~0ri4xITPqTmUKRwtnjLK7qvxuW-10i9U7ozTZqI98uWHEdokNeydgbMoAFX15f3acN17nrJHB9IyyCZcmoeTE3PlHh9R8lWcssT-r9OJ9wzEHKvL~o2JTKZXG0BgAQJ-Pm4RJjxQ__',
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                print('Selected Payment: $selectedPayment');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOption(String title, String imageUrl) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.network(imageUrl, width: 40, height: 40),
        title: Text(title),
        trailing: Radio<String>(
          value: title,
          groupValue: selectedPayment,
          onChanged: (value) {
            setState(() {
              selectedPayment = value;
            });
          },
        ),
      ),
    );
  }
}
