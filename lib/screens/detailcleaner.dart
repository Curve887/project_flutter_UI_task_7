import 'package:flutter/material.dart';

class DetailCleanerPage extends StatefulWidget {
  @override
  _DetailCleanerPageState createState() => _DetailCleanerPageState();
}

class _DetailCleanerPageState extends State<DetailCleanerPage> {
  String selectedSize = '100 ml';

  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Cleaners', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Gambar produk
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/f341/2d4d/538df79552fddae818bd0fe1a45e2097?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=lWw9VfpkJzgmx6ADUwA4BMtYO1gAbSjeXXSCBcPQZhpz-PjMCQtM22IyhmzlKuuzflIFKA4j~wqLu4tFIrK-VfzGZ7EtkWURHqLBBNTZqLq8RR7Da5QmA82LoXblSHxAPolBxAgfIgc4H0WelRlUvET1H56-szKkWdsuNsjGRBdEsY2WMSEqZrVTubCUyxpp8C8flNbSY3DTmfVHnPUqVACZCFVJ4HLC888xXPYBcMjkYAqbQetw8IFZZMGkyhADJAUGi1E38O3BVztjIue-YfR7yKfUWo7-AG6zgFFNzBCV~UYc8AH-8BgCoJ8~0DMbTO0oleEjULXEzPAPpEjs6g__',
                    height: 200,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Detail produk
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Harga dan ikon favorit
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$29.00',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.favorite_border, color: Colors.red),
                      ],
                    ),
                    SizedBox(height: 8),

                    // Nama produk dan rating
                    Text(
                      'White Ginseng Mas',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Text(
                          '5.0',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    // Deskripsi produk
                    Text(
                      'Masks for facial pore care that help clean clogged dirt in the pores, and control oil levels on the face. Helps clear pores clogging...',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        // Aksi ketika tombol "Read More" diklik
                      },
                      child: Text(
                        'Read More',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),

                    // Pilihan ukuran
                    Text(
                      'Size',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        sizeButton('100 ml'),
                        sizeButton('150 ml'),
                        sizeButton('200 ml'),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Review
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.person, color: Colors.black),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Abdor Khaleed',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          'SEE ALL',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'The product is very good, fits on my skin and also the delivery is very fast, the admin is ...',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Tombol tambah ke keranjang
              SizedBox(
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sizeButton(String size) {
    return GestureDetector(
      onTap: () => selectSize(size),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: selectedSize == size ? Colors.black : Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: selectedSize == size ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
