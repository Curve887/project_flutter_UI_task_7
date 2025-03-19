import 'package:flutter/material.dart';

class DetailPaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey, size: 28),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Payment',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'payment deadline',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '24:00:00',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(thickness: 1, height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bank BSI', style: TextStyle(fontSize: 16)),
                  Image.network(
                    'https://s3-alpha-sig.figma.com/img/4516/bc32/c178f9c6ca9983c5b1dc7201cad5c5e8?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=I3Ct~dc7PDEiSWIbWdEiA7I4pf51zHyY8r8iScuPmnGkJzvjTvIgdAP6NIrxpT4SdVW1Sfk9PjwCWifvdHJd666SDMaDu1RM-hIih9qyar2UQJrrVSORDwUAohYbeHy17q4p6S6HcnAj1EjYJrQLwkklS3hWMyf2hh6QfaSsAtxz2hKub79WMAjTgHXnKCg4Zf6fdIMTioLdaP0INEnBHYJ5aLfjd9iet~y6sTFrKu5EaRUu0CoFCewxuFfexhb6KxP9j~vnPKcdFooOK4s~anAEi-o51XFUXRKRTD8EHflYT4xlPCg35KTbzPiFJJxnbvMgvr2VWNFTVdbIqhc1CA__',
                    height: 30,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Account number',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '083738408234702302',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Salin',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Total Payment',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              Text(
                '\$520.00',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 18),
                  elevation: 4,
                ),
                child: Center(
                  child: Text(
                    'Buy again',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 18),
                ),
                child: Center(
                  child: Text(
                    'Check status',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
