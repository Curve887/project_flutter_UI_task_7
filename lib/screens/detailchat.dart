import 'package:flutter/material.dart';

class DetailChatPage extends StatefulWidget {
  @override
  State<DetailChatPage> createState() => _DetailChatPageState();
}

class _DetailChatPageState extends State<DetailChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/9570/19e0/e62e974483007dc043d5c1570209a388?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=WCanthrit~7mFb~GqSBrgWnuBtiKFm-vWoz5mcTm5g2qULjKaHwsGVzasddUSbzsBhsY9fj-BEHn79Lf9IWQDhP9VKvktbiZi3CPjaZAxDywLK-9ll3tTlSojmHBsU-S~nIaNuoSk5oPjrcAIkPqocBxlom~-VKUp1avWdMALmkiRg3mZNWxv9Ve0Rst6LY9ffY-bCHWy70ncN1kzpgCHdVdRfn4jw8RFscxOoJB6dLEoHUqA2Zhg6T8IOZjMRUEPA0PO6EDux6bQiRA1lKH3441KA8tqKPtdk~6JMFMcdbhVnOh7~Kk4hUrslYZHZwHp1Jijdfe4~ns4jpraaxByQ__',
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kaleeb Store',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Online',
                  style: TextStyle(color: Colors.green, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                buildMessageBubble(
                  'hello, is skincare still available?',
                  isSender: true,
                  time: '10:00',
                ),
                buildMessageBubble(
                  'hello too, there are still Bro please order all the items are ready and they are still long expiring',
                  isSender: false,
                  time: '10:00',
                ),
                buildMessageBubble(
                  'and there is also a discount too.',
                  isSender: false,
                  time: '10:00',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Thank you very much...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(
                    icon: Icon(Icons.send, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMessageBubble(
    String message, {
    required bool isSender,
    required String time,
  }) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.all(12),
        constraints: BoxConstraints(maxWidth: 250),
        decoration: BoxDecoration(
          color: isSender ? Colors.grey[300] : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment:
              isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(message, style: TextStyle(fontSize: 14, color: Colors.black)),
            SizedBox(height: 4),
            Text(time, style: TextStyle(fontSize: 10, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
