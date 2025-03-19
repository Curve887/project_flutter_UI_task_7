import 'package:flutter/material.dart';
import 'package:project_flutter_ui/screens/editprofil.dart';
import 'package:project_flutter_ui/screens/login.dart';
import 'package:project_flutter_ui/screens/my_orders.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void logout() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => false,
    );
  }

  void navigateToEditProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditProfilePage()),
    );
  }

  void navigateToMyOrders() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyOrderPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Profile', style: TextStyle(color: Colors.black)),
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
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/9570/19e0/e62e974483007dc043d5c1570209a388?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=WCanthrit~7mFb~GqSBrgWnuBtiKFm-vWoz5mcTm5g2qULjKaHwsGVzasddUSbzsBhsY9fj-BEHn79Lf9IWQDhP9VKvktbiZi3CPjaZAxDywLK-9ll3tTlSojmHBsU-S~nIaNuoSk5oPjrcAIkPqocBxlom~-VKUp1avWdMALmkiRg3mZNWxv9Ve0Rst6LY9ffY-bCHWy70ncN1kzpgCHdVdRfn4jw8RFscxOoJB6dLEoHUqA2Zhg6T8IOZjMRUEPA0PO6EDux6bQiRA1lKH3441KA8tqKPtdk~6JMFMcdbhVnOh7~Kk4hUrslYZHZwHp1Jijdfe4~ns4jpraaxByQ__',
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Maalek Shobab',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Silver members',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),
            buildProfileOption(
              Icons.receipt_long,
              'My orders',
              navigateToMyOrders,
            ),

            buildProfileOption(Icons.location_on, 'Shipping addresses', () {}),
            buildProfileOption(Icons.payment, 'Payment methods', () {}),
            buildProfileOption(Icons.card_giftcard, 'My Voucher', () {}),
            buildProfileOption(
              Icons.settings,
              'Settings',
              navigateToEditProfile,
            ),
            SizedBox(height: 24),
            GestureDetector(
              onTap: logout,
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
            Spacer(),
            Text('Version 0.1', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget buildProfileOption(IconData icon, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.black),
                SizedBox(width: 16),
                Text(title, style: TextStyle(fontSize: 16)),
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          ],
        ),
      ),
    );
  }
}
