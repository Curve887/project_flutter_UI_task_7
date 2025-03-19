import 'package:flutter/material.dart';
import 'package:project_flutter_ui/screens/detailchat.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Chat', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          buildChatItem(
            context,
            'Kaleeb Store',
            'Ok, Please order it brother',
            '2021-03-10',
          ),
          buildChatItem(
            context,
            'Fateeh Store',
            'Ok, Please order it brother',
            '2021-03-10',
          ),
        ],
      ),
    );
  }

  Widget buildChatItem(
    BuildContext context,
    String name,
    String message,
    String date,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailChatPage()),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/9570/19e0/e62e974483007dc043d5c1570209a388?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=WCanthrit~7mFb~GqSBrgWnuBtiKFm-vWoz5mcTm5g2qULjKaHwsGVzasddUSbzsBhsY9fj-BEHn79Lf9IWQDhP9VKvktbiZi3CPjaZAxDywLK-9ll3tTlSojmHBsU-S~nIaNuoSk5oPjrcAIkPqocBxlom~-VKUp1avWdMALmkiRg3mZNWxv9Ve0Rst6LY9ffY-bCHWy70ncN1kzpgCHdVdRfn4jw8RFscxOoJB6dLEoHUqA2Zhg6T8IOZjMRUEPA0PO6EDux6bQiRA1lKH3441KA8tqKPtdk~6JMFMcdbhVnOh7~Kk4hUrslYZHZwHp1Jijdfe4~ns4jpraaxByQ__',
              ),
            ),
            title: Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(message, style: TextStyle(color: Colors.grey)),
            trailing: Text(date, style: TextStyle(color: Colors.grey)),
          ),
          Divider(color: Colors.grey[300], thickness: 0.5),
        ],
      ),
    );
  }
}
