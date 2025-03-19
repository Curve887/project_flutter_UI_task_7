import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  final List<Map<String, dynamic>> products = [
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/7664/cc7c/cb915e235fa84b5352a503e37a60375e?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ZeYSq1BRJEDO~Ie7h~xXI1cAjfaNLetXXLdOf8ezHRHDwdynuigPSLjGH2lR3zcGG9RZ6jo3oFufuBSuQ1IezLUqc05YmYK98yUFIukt8NwWT07KgFzdQyfPsKXM5PiVqb2kRzk4gD1gmFRHYUOom2YVkDHHwsdXciqvsqOf0KIAEUavlK0S3wh9eId7tmKfY7jubMpsaJ5MDVWZG7dM3ixGb485PnRLB2vm83vc2CHPZB4hUneiqc~UA4HDBOBkeswutpif1niQdmsOQm4ko8VNfmgDzvAWfpZFaPKssz-j9EST0kadF~IaVurGwjrG~n-O5FRVxK8d40w4ImAeXA__',
      'title': 'White Ginseng Mask',
      'subtitle': 'Radiance Refining Mask',
      'price': '\$29.00',
    },
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/f341/2d4d/538df79552fddae818bd0fe1a45e2097?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=lWw9VfpkJzgmx6ADUwA4BMtYO1gAbSjeXXSCBcPQZhpz-PjMCQtM22IyhmzlKuuzflIFKA4j~wqLu4tFIrK-VfzGZ7EtkWURHqLBBNTZqLq8RR7Da5QmA82LoXblSHxAPolBxAgfIgc4H0WelRlUvET1H56-szKkWdsuNsjGRBdEsY2WMSEqZrVTubCUyxpp8C8flNbSY3DTmfVHnPUqVACZCFVJ4HLC888xXPYBcMjkYAqbQetw8IFZZMGkyhADJAUGi1E38O3BVztjIue-YfR7yKfUWo7-AG6zgFFNzBCV~UYc8AH-8BgCoJ8~0DMbTO0oleEjULXEzPAPpEjs6g__',
      'title': 'Green Tea Mask',
      'subtitle': 'Purifying Detox Mask',
      'price': '\$24.00',
    },
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/2152/3cd7/b6bf8b254e952b97044cca9aabf82a36?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=IOnBgeVgEncxNGpyvjbkYzZHJakQdZJaz9MB2HefcxJ9fh~0wIhGUxFTApkNFN79LfqVzML1TzKfmYY~-2QOUcrRCFGNJJSjNzyhKAb1Q2-04KSHnOwjtjvlhEf23gAr8FYgSYekEXiWaU-dDN1-gd021nBOHW03q1sesfpHQ55PZxfC7vnXqVt1JfXP3FtQ2DVopNRDWp-DSBLvvLirwPVLPT0J9REP-vbEVrVG7yAH2IpaLviZp6tBZL8zNAkITNJAadhkuWPdB~26UcQ63C5BRee1jbONzQNH53N--A6S4pgon5~r~HKPn76d7esrK42Hf5cAZSu-3arEK1n4SQ__',
      'title': 'Charcoal Clay Mask',
      'subtitle': 'Deep Cleansing Mask',
      'price': '\$32.00',
    },
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/2152/3cd7/b6bf8b254e952b97044cca9aabf82a36?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=IOnBgeVgEncxNGpyvjbkYzZHJakQdZJaz9MB2HefcxJ9fh~0wIhGUxFTApkNFN79LfqVzML1TzKfmYY~-2QOUcrRCFGNJJSjNzyhKAb1Q2-04KSHnOwjtjvlhEf23gAr8FYgSYekEXiWaU-dDN1-gd021nBOHW03q1sesfpHQ55PZxfC7vnXqVt1JfXP3FtQ2DVopNRDWp-DSBLvvLirwPVLPT0J9REP-vbEVrVG7yAH2IpaLviZp6tBZL8zNAkITNJAadhkuWPdB~26UcQ63C5BRee1jbONzQNH53N--A6S4pgon5~r~HKPn76d7esrK42Hf5cAZSu-3arEK1n4SQ__',
      'title': 'Rose Water Mist',
      'subtitle': 'Hydrating Facial Mist',
      'price': '\$19.00',
    },
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/2152/3cd7/b6bf8b254e952b97044cca9aabf82a36?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=IOnBgeVgEncxNGpyvjbkYzZHJakQdZJaz9MB2HefcxJ9fh~0wIhGUxFTApkNFN79LfqVzML1TzKfmYY~-2QOUcrRCFGNJJSjNzyhKAb1Q2-04KSHnOwjtjvlhEf23gAr8FYgSYekEXiWaU-dDN1-gd021nBOHW03q1sesfpHQ55PZxfC7vnXqVt1JfXP3FtQ2DVopNRDWp-DSBLvvLirwPVLPT0J9REP-vbEVrVG7yAH2IpaLviZp6tBZL8zNAkITNJAadhkuWPdB~26UcQ63C5BRee1jbONzQNH53N--A6S4pgon5~r~HKPn76d7esrK42Hf5cAZSu-3arEK1n4SQ__',
      'title': 'Aloe Vera Gel',
      'subtitle': 'Soothing Moisturizer',
      'price': '\$15.00',
    },
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/2152/3cd7/b6bf8b254e952b97044cca9aabf82a36?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=IOnBgeVgEncxNGpyvjbkYzZHJakQdZJaz9MB2HefcxJ9fh~0wIhGUxFTApkNFN79LfqVzML1TzKfmYY~-2QOUcrRCFGNJJSjNzyhKAb1Q2-04KSHnOwjtjvlhEf23gAr8FYgSYekEXiWaU-dDN1-gd021nBOHW03q1sesfpHQ55PZxfC7vnXqVt1JfXP3FtQ2DVopNRDWp-DSBLvvLirwPVLPT0J9REP-vbEVrVG7yAH2IpaLviZp6tBZL8zNAkITNJAadhkuWPdB~26UcQ63C5BRee1jbONzQNH53N--A6S4pgon5~r~HKPn76d7esrK42Hf5cAZSu-3arEK1n4SQ__',
      'title': 'Vitamin C Serum',
      'subtitle': 'Brightening Booster',
      'price': '\$39.00',
    },
  ];

  List<bool> favoriteStatus = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Wishlist', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.7,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      products[index]['imageUrl'],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.broken_image,
                          size: 80,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          products[index]['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(products[index]['subtitle']),
                        SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              products[index]['price'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                favoriteStatus[index]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color:
                                    favoriteStatus[index]
                                        ? Colors.red
                                        : Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  favoriteStatus[index] =
                                      !favoriteStatus[index];
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
