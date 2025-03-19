import 'package:flutter/material.dart';
import 'package:project_flutter_ui/screens/address.dart';
import 'package:project_flutter_ui/screens/courier.dart';
import 'package:project_flutter_ui/screens/payment.dart';
import 'package:project_flutter_ui/screens/success.dart';

class CheckoutPage extends StatelessWidget {
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
          'Checkout',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shipping to',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildOptionTile(
              'Office',
              'South Tangerang City, Banten 15414\n0822-1376-1973',
              context: context,
            ),

            SizedBox(height: 16),
            Text(
              'Payment method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildOptionTileWithLogo(
              'Paypal',
              '',
              imageUrl:
                  'https://s3-alpha-sig.figma.com/img/66f1/4d75/7ddde9d5c6ef68750e82151eab79d1b8?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=X9bLeuZSbuP-uwlmf8YxIG6rS58RnqD5CJrxaSipGgLQzdYHxeko65VnNJzs4azykoh-~zO3MCOSIMJZhrsa2pgSsa4F8CEYtx9wwgKtdtUuHPQP3NVgbf6tNJnm54cCphCAaqNBUE8Ey6oShj8F~~NEgPnkqAM~zSUZsMZ4QUd0oElYB6dijjMGwFyEIg1AwaXqzkTxLFVR4UtzCwoJjy6cZMH2xD23rEJhtKgR5EaF0ZMjtil0PfRL4qREO6~Eua0ydGKccCyG8IpoBtu7WjXfqsGzuuXm37Wx9QvKpyMSzPt3pTwEbMdxkcd7d0C9~suSc8kk-U4AG3wuGsme0g__',
              context: context,
            ),

            SizedBox(height: 16),
            Text(
              'Courier',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CourierPage()),
                );
              },
              child: _buildCourierTile(
                'Pos Indonesia',
                'REG - \$50.00 (2 working days)',
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/54a1/de2e/5e1f836c9ceea9b69fad213120141edc?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=PFsFjrwUT5vZ~mgTxcStbuzJohMsc6bFH~oBEUmeN8QIcb59PXFaoFwOkotxhs~HqMRtG4MkxmYQa8WleI9zdnHxJifd66-RZi1tsUeo9mwOWAVjqGf6j-NtRxpMX0dGsSpWfeFPVMCvZkzhdlpS8hwEq3HxgBcgza7FeVLwWQo6rFBGUJ0h5IxyfiqbpUP60Addb7rF3yf6tH6K4Dvq7TJYIsk7VcWTqOFzJ-GDoqWqZQssu5I6uggBB42aPnuAJwAH9IQbxxlso-Qc1j2Ghrgd2-h4LqqPlKbfkOdJYe9UTxD~BBape~Dqu9CBazhkpcnjKoaH82poHAmLs9MTfw__',
              ),
            ),

            SizedBox(height: 16),
            Text(
              'Shopping list',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: [
                  _buildShoppingItemWithImage(
                    'White Ginseng Purify Mask',
                    '\$120.00',
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/f341/2d4d/538df79552fddae818bd0fe1a45e2097?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=lWw9VfpkJzgmx6ADUwA4BMtYO1gAbSjeXXSCBcPQZhpz-PjMCQtM22IyhmzlKuuzflIFKA4j~wqLu4tFIrK-VfzGZ7EtkWURHqLBBNTZqLq8RR7Da5QmA82LoXblSHxAPolBxAgfIgc4H0WelRlUvET1H56-szKkWdsuNsjGRBdEsY2WMSEqZrVTubCUyxpp8C8flNbSY3DTmfVHnPUqVACZCFVJ4HLC888xXPYBcMjkYAqbQetw8IFZZMGkyhADJAUGi1E38O3BVztjIue-YfR7yKfUWo7-AG6zgFFNzBCV~UYc8AH-8BgCoJ8~0DMbTO0oleEjULXEzPAPpEjs6g__',
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            _buildSummary(),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccessPage()),
                );
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
                  'Payment',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourierTile(
    String title,
    String subtitle, {
    required String imageUrl,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.network(imageUrl, width: 30, height: 30),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(subtitle, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildOptionTileWithLogo(
    String title,
    String subtitle, {
    String? imageUrl,
    BuildContext? context,
  }) {
    return GestureDetector(
      onTap: () {
        if (context != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PaymentPage()),
          );
        }
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            if (imageUrl != null)
              Image.network(imageUrl, width: 30, height: 30),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  if (subtitle.isNotEmpty)
                    Text(subtitle, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget _buildShoppingItemWithImage(
    String title,
    String price, {
    String? imageUrl,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          if (imageUrl != null) Image.network(imageUrl, width: 60, height: 60),
          SizedBox(width: 12),
          Expanded(child: Text(title, style: TextStyle(fontSize: 16))),
          Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

Widget _buildOptionTile(
  String title,
  String subtitle, {
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: () {
      if (title == 'Office' && context != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddressPage()),
        );
      }
    },
    child: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(subtitle, style: TextStyle(color: Colors.grey)),
        ],
      ),
    ),
  );
}

Widget _buildSummary() {
  return Container(
    padding: EdgeInsets.all(16),
    child: Column(
      children: [
        Text(
          'Summary',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text('Total: \$120.00'),
      ],
    ),
  );
}
