import 'package:flutter/material.dart';
import 'package:project_flutter_ui/screens/voucher.dart';

class CourierPage extends StatefulWidget {
  @override
  _CourierPageState createState() => _CourierPageState();
}

class _CourierPageState extends State<CourierPage> {
  int _selectedCourier = 0;

  final List<Map<String, String>> couriers = [
    {
      'name': 'POS Indonesia',
      'price': '\$50.00',
      'duration': '2 working days',
      'image':
          'https://s3-alpha-sig.figma.com/img/54a1/de2e/5e1f836c9ceea9b69fad213120141edc?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=PFsFjrwUT5vZ~mgTxcStbuzJohMsc6bFH~oBEUmeN8QIcb59PXFaoFwOkotxhs~HqMRtG4MkxmYQa8WleI9zdnHxJifd66-RZi1tsUeo9mwOWAVjqGf6j-NtRxpMX0dGsSpWfeFPVMCvZkzhdlpS8hwEq3HxgBcgza7FeVLwWQo6rFBGUJ0h5IxyfiqbpUP60Addb7rF3yf6tH6K4Dvq7TJYIsk7VcWTqOFzJ-GDoqWqZQssu5I6uggBB42aPnuAJwAH9IQbxxlso-Qc1j2Ghrgd2-h4LqqPlKbfkOdJYe9UTxD~BBape~Dqu9CBazhkpcnjKoaH82poHAmLs9MTfw__',
    },
    {
      'name': 'JNE Express',
      'price': '\$50.00',
      'duration': '3 working days',
      'image':
          'https://s3-alpha-sig.figma.com/img/6bbb/c4b3/53d183ce3d9622ed39b3b331e387707b?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=iWhhT9MLFWJdsSimTjdiwZh9Wpf4BtZDcEyZwvWNFsmZSt~9HR6BWqD-UDEuLdYRYYXUEnAriygT92CkTFEP0e8vT5tAC915vQ5flW9RaRzooSVM0pJrgQczAmcjRFE2SNpIVLmzbI8o0jSDEhyvty2OlNjq~omkyoIRmBw6G~MGSKEZmvdqQjgAzYvqUyaFcaL6JGtWNwB-5J~9S~0i~YgRl5NBU9Cy4iXuLwyVXUNfGhLRixG0h2xyEmEmXF84UJDsrGABmkzQwedwlWY6KOOXCwBRCPs8n~1zMFaS5SNPNiI7bZ56DR94uwxPwvjTcCc9Naj842jkHLLSaqyOrg__',
    },
    {
      'name': 'JNT Express',
      'price': '\$50.00',
      'duration': '5 working days',
      'image':
          'https://s3-alpha-sig.figma.com/img/3671/4d75/3e6d33c83ebca11cae80e434d6cfda61?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=tM2ovDXQ0KpQWXJs9ZWubr0ngcIISvCGNVmqI1jub0vVbmN60ZATqsOFikFmPwqVzBi15lpHO-1oHoIbgxgIccO9H7aFHX-h3ob6dslbVBDtbDiFhusfv~sMA0BRx4JDD3t1tmFzrFX0mkkL~8rhHi7-RoxALw~gB31Rx7fk30--qexpD4kHL2wMhwZKz3bI1S7ejpTvzGt8BlvZ36uAkbbFWskTLA4nKnGVxv1DFWYwL7glTSRWfbV4frenGkdZxkxybgRRMdmTANm7lPeiXGA4qtZm6umXLhbN6iNiPXQw0f2khGUifTPdP1E5xpHEsoat~r-IDrs1NKsb9JiCCw__',
    },
    {
      'name': 'SiCepat',
      'price': '\$50.00',
      'duration': '7 working days',
      'image':
          'https://s3-alpha-sig.figma.com/img/5f00/10cd/f0be2f0598c16201a63980b31a12e8bb?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=mARUZh6gqF8Oe3hR28nyyG0k~M5YxS6sGfhUG-TmFDbPpb3BKB1mWmrO3INt6RtCRFbGh-14lf0JPhJvblFIH4JTt0mEFeZT41vlzWT~s4NE5xw6BFFaEeLNH8NabtuGoZKSVYRJkCAa6wOaN-lbFS7~JScUBXF~1n4salzvK8lMDOIsrhqGRtsmntgVJn9ZXA17eUZ--w3dCP3mvTEP7UNfIkhHdIJBbMzQc5zUcDp1cDtO0yWsqK4yAVwpcyxUnfOdIU-g-TkuR9pqIuFgjpGsHtRq2IlCNIX3ej61RXY7hQZE6nmk6P15iJGNWwpBfN5ituQp7al-T-jIwrN8XA__',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Courier'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Courier available',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ...couriers.asMap().entries.map((entry) {
              int idx = entry.key;
              var courier = entry.value;
              return ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                leading: Image.network(
                  courier['image']!,
                  width: 50,
                  height: 50,
                ),
                title: Text(courier['name']!),
                subtitle: Text(
                  'REG - ${courier['price']} (${courier['duration']})',
                ),
                trailing: Radio(
                  value: idx,
                  groupValue: _selectedCourier,
                  onChanged: (value) {
                    setState(() {
                      _selectedCourier = value as int;
                    });
                    // Navigasi ke VoucherPage setelah memilih kurir
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VoucherPage()),
                    );
                  },
                ),
              );
            }).toList(),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('Save', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
