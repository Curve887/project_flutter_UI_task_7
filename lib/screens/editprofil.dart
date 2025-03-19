import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Change Profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/9570/19e0/e62e974483007dc043d5c1570209a388?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=WCanthrit~7mFb~GqSBrgWnuBtiKFm-vWoz5mcTm5g2qULjKaHwsGVzasddUSbzsBhsY9fj-BEHn79Lf9IWQDhP9VKvktbiZi3CPjaZAxDywLK-9ll3tTlSojmHBsU-S~nIaNuoSk5oPjrcAIkPqocBxlom~-VKUp1avWdMALmkiRg3mZNWxv9Ve0Rst6LY9ffY-bCHWy70ncN1kzpgCHdVdRfn4jw8RFscxOoJB6dLEoHUqA2Zhg6T8IOZjMRUEPA0PO6EDux6bQiRA1lKH3441KA8tqKPtdk~6JMFMcdbhVnOh7~Kk4hUrslYZHZwHp1Jijdfe4~ns4jpraaxByQ__',
              ),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                // Aksi untuk mengganti foto
              },
              child: Text(
                'Change photo',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            buildProfileField('Name', 'Maleek Kaleeb'),
            buildProfileField('Gender', 'Male'),
            buildProfileField('Date of Birth', '10/10/2010'),
            buildProfileField('Phone number', '+628-123-345-678'),
            buildProfileField('Email', 'maleek@kaleeb'),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol Save ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileField(String label, String value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey, fontSize: 16)),
          Text(value, style: TextStyle(color: Colors.black, fontSize: 16)),
        ],
      ),
    );
  }
}
