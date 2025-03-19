import 'package:flutter/material.dart';

class ReviewersPage extends StatefulWidget {
  @override
  _ReviewersPageState createState() => _ReviewersPageState();
}

class _ReviewersPageState extends State<ReviewersPage> {
  int selectedRating = 0;

  void selectRating(int rating) {
    setState(() {
      selectedRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Reviewers', style: TextStyle(color: Colors.black)),
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
            Row(
              children: [
                Text(
                  '5.0',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 8),
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(Icons.star, color: Colors.amber),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      onPressed:
                          () => selectRating(0), // Aksi untuk "All Reviewer"
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            selectedRating == 0 ? Colors.blue : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: Text(
                        'All Reviewer',
                        style: TextStyle(
                          color:
                              selectedRating == 0 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  ...List.generate(5, (index) {
                    int rating = 5 - index;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: ElevatedButton(
                        onPressed: () => selectRating(rating),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              selectedRating == rating
                                  ? Colors.blue
                                  : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 18),
                            SizedBox(width: 4),
                            Text(
                              '$rating',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.only(top: 16),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/9570/19e0/e62e974483007dc043d5c1570209a388?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=WCanthrit~7mFb~GqSBrgWnuBtiKFm-vWoz5mcTm5g2qULjKaHwsGVzasddUSbzsBhsY9fj-BEHn79Lf9IWQDhP9VKvktbiZi3CPjaZAxDywLK-9ll3tTlSojmHBsU-S~nIaNuoSk5oPjrcAIkPqocBxlom~-VKUp1avWdMALmkiRg3mZNWxv9Ve0Rst6LY9ffY-bCHWy70ncN1kzpgCHdVdRfn4jw8RFscxOoJB6dLEoHUqA2Zhg6T8IOZjMRUEPA0PO6EDux6bQiRA1lKH3441KA8tqKPtdk~6JMFMcdbhVnOh7~Kk4hUrslYZHZwHp1Jijdfe4~ns4jpraaxByQ__',
                        ),
                      ),
                      title: Text('Abdor Khaleed'),
                      subtitle: Text(
                        'The product is very good, fits on my skin, and also the delivery is very fast.',
                      ),
                      trailing: Text('2020 March, 20'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
