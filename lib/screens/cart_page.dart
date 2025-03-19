import 'package:flutter/material.dart';
import 'package:project_flutter_ui/screens/checkout.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int totalItems = 4;
  int itemCount = 1;
  bool selectAll = true;
  List<bool> selectedItems = [true, true, true, true];

  void increment() {
    setState(() {
      itemCount++;
    });
  }

  void decrement() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
      });
    }
  }

  void toggleSelectAll(bool? value) {
    setState(() {
      selectAll = value ?? false;
      for (int i = 0; i < totalItems; i++) {
        selectedItems[i] = selectAll;
      }
    });
  }

  void toggleItemSelection(int index, bool? value) {
    setState(() {
      selectedItems[index] = value ?? false;
      selectAll = selectedItems.every((item) => item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text('Cart', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(value: selectAll, onChanged: toggleSelectAll),
                Text('Select All'),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: totalItems,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Checkbox(
                            value: selectedItems[index],
                            onChanged:
                                (value) => toggleItemSelection(index, value),
                          ),
                          Image.network(
                            'https://s3-alpha-sig.figma.com/img/f341/2d4d/538df79552fddae818bd0fe1a45e2097?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=lWw9VfpkJzgmx6ADUwA4BMtYO1gAbSjeXXSCBcPQZhpz-PjMCQtM22IyhmzlKuuzflIFKA4j~wqLu4tFIrK-VfzGZ7EtkWURHqLBBNTZqLq8RR7Da5QmA82LoXblSHxAPolBxAgfIgc4H0WelRlUvET1H56-szKkWdsuNsjGRBdEsY2WMSEqZrVTubCUyxpp8C8flNbSY3DTmfVHnPUqVACZCFVJ4HLC888xXPYBcMjkYAqbQetw8IFZZMGkyhADJAUGi1E38O3BVztjIue-YfR7yKfUWo7-AG6zgFFNzBCV~UYc8AH-8BgCoJ8~0DMbTO0oleEjULXEzPAPpEjs6g__',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'White Ginseng Purify Mask',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '\$120.00',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove_circle_outline),
                                onPressed: decrement,
                              ),
                              Text(itemCount.toString().padLeft(2, '0')),
                              IconButton(
                                icon: Icon(Icons.add_circle_outline),
                                onPressed: increment,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select Items (4)'),
                      Text('Total : \$120.00'),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CheckoutPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                          color: Colors.white,
                        ), // Warna teks putih
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
