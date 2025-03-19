import 'package:flutter/material.dart';

class DetailOrderPage extends StatefulWidget {
  @override
  _DetailOrderPageState createState() => _DetailOrderPageState();
}

class _DetailOrderPageState extends State<DetailOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Detail Order', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Status',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 4),
            Text(
              'Success',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(height: 24, thickness: 1),
            buildOrderDetail('Order ID', '#00000123456'),
            buildOrderDetail('Order Date', '2020-03-10'),
            SizedBox(height: 16),
            buildSectionTitle('Kaleeb Store'),
            buildProductItem(),
            SizedBox(height: 16),
            buildSectionTitle('Shipping Address'),
            buildOrderDetail(
              'Kaleb Rahmeen',
              'South Tangerang City, Banten 15414\n0822-1376-1973',
            ),
            SizedBox(height: 16),
            buildSectionTitle('Shipping Information'),
            buildOrderDetail('Pos Indonesia - PSIDN123456', '2021-03-09 17:00'),
            SizedBox(height: 16),
            buildSectionTitle('Payment Information'),
            buildOrderDetail('Payment Method', 'Paypal'),
            buildOrderDetail('Shipping fee', '\$30.00'),
            buildOrderDetail('Sub total', '\$120.00'),
            buildOrderDetail('Total', '\$520.00', bold: true),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Buy again',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOrderDetail(String title, String value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Colors.black54)),
          Text(
            value,
            style: TextStyle(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget buildProductItem() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.network(
            'https://s3-alpha-sig.figma.com/img/f341/2d4d/538df79552fddae818bd0fe1a45e2097?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=lWw9VfpkJzgmx6ADUwA4BMtYO1gAbSjeXXSCBcPQZhpz-PjMCQtM22IyhmzlKuuzflIFKA4j~wqLu4tFIrK-VfzGZ7EtkWURHqLBBNTZqLq8RR7Da5QmA82LoXblSHxAPolBxAgfIgc4H0WelRlUvET1H56-szKkWdsuNsjGRBdEsY2WMSEqZrVTubCUyxpp8C8flNbSY3DTmfVHnPUqVACZCFVJ4HLC888xXPYBcMjkYAqbQetw8IFZZMGkyhADJAUGi1E38O3BVztjIue-YfR7yKfUWo7-AG6zgFFNzBCV~UYc8AH-8BgCoJ8~0DMbTO0oleEjULXEzPAPpEjs6g',
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'White Ginseng Purify Mask',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('\$120.00 (1x)', style: TextStyle(color: Colors.grey[600])),
            ],
          ),
        ],
      ),
    );
  }
}
