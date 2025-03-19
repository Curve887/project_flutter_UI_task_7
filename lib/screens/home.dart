import 'package:flutter/material.dart';
import 'package:project_flutter_ui/screens/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "UCARE",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  icon: Icon(Icons.search, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Kotak Banner Produk
            Row(
              children: [
                const SizedBox(width: 16),
                // Teks dan Tombol
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(8, 2, 27, 1),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF2F2F2), // Warna latar sesuai permintaan
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Herbal Clay Purifying Mask",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () {
                                  // Aksi tombol Shop Now
                                  print("Shop Now clicked!");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Text(
                                  'Shop Now',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Gambar Produk di Kanan dengan Rotasi
                        Transform.rotate(
                          angle:
                              -0.52, // Rotasi sekitar 30 derajat (dalam radian)
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://s3-alpha-sig.figma.com/img/1d68/6078/aea03343c3c085872ee25c46d15f12f9?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=nyWCgami7hHVLoKXgLTvVd30Zy7T0JyoznxVSAK8tMrNS9uD4tP6iJXlhQlDkMGUgG1Mo26XGpHdRqWxoCNZqwJd~Bx~1I-3mMRDu7T7zzix8GyIQ2DP1nDINkVtUfrWT6ZHCECl~3U-1AP-Wpe1mETqdS40RVqV-koHUlFuzx8bwYyF2vrGaKtdocdhNxZ~sPe6LbZNewYHJZBDlSxdeHNHKhgLLDWktcvgM15EwYLphFmScqgASJxbRaCz3weFKtGYbASUnF1Z5N3Ly6uBYQ56KJbFk0EzK1mjo8QwCbXIxjVlzTP~IY28QASjMA7IihobUz7NaB0Cim0vdwBFfg__',
                              width: 170,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Cleaners",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  "Toner",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  "Essence",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  "Moisturizer",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 10),

            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  // Daftar URL gambar
                  final List<String> imageUrls = [
                    'https://s3-alpha-sig.figma.com/img/f341/2d4d/538df79552fddae818bd0fe1a45e2097?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=lWw9VfpkJzgmx6ADUwA4BMtYO1gAbSjeXXSCBcPQZhpz-PjMCQtM22IyhmzlKuuzflIFKA4j~wqLu4tFIrK-VfzGZ7EtkWURHqLBBNTZqLq8RR7Da5QmA82LoXblSHxAPolBxAgfIgc4H0WelRlUvET1H56-szKkWdsuNsjGRBdEsY2WMSEqZrVTubCUyxpp8C8flNbSY3DTmfVHnPUqVACZCFVJ4HLC888xXPYBcMjkYAqbQetw8IFZZMGkyhADJAUGi1E38O3BVztjIue-YfR7yKfUWo7-AG6zgFFNzBCV~UYc8AH-8BgCoJ8~0DMbTO0oleEjULXEzPAPpEjs6g__',
                    'https://s3-alpha-sig.figma.com/img/7664/cc7c/cb915e235fa84b5352a503e37a60375e?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ZeYSq1BRJEDO~Ie7h~xXI1cAjfaNLetXXLdOf8ezHRHDwdynuigPSLjGH2lR3zcGG9RZ6jo3oFufuBSuQ1IezLUqc05YmYK98yUFIukt8NwWT07KgFzdQyfPsKXM5PiVqb2kRzk4gD1gmFRHYUOom2YVkDHHwsdXciqvsqOf0KIAEUavlK0S3wh9eId7tmKfY7jubMpsaJ5MDVWZG7dM3ixGb485PnRLB2vm83vc2CHPZB4hUneiqc~UA4HDBOBkeswutpif1niQdmsOQm4ko8VNfmgDzvAWfpZFaPKssz-j9EST0kadF~IaVurGwjrG~n-O5FRVxK8d40w4ImAeXA__',
                    'https://s3-alpha-sig.figma.com/img/2152/3cd7/b6bf8b254e952b97044cca9aabf82a36?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=IOnBgeVgEncxNGpyvjbkYzZHJakQdZJaz9MB2HefcxJ9fh~0wIhGUxFTApkNFN79LfqVzML1TzKfmYY~-2QOUcrRCFGNJJSjNzyhKAb1Q2-04KSHnOwjtjvlhEf23gAr8FYgSYekEXiWaU-dDN1-gd021nBOHW03q1sesfpHQ55PZxfC7vnXqVt1JfXP3FtQ2DVopNRDWp-DSBLvvLirwPVLPT0J9REP-vbEVrVG7yAH2IpaLviZp6tBZL8zNAkITNJAadhkuWPdB~26UcQ63C5BRee1jbONzQNH53N--A6S4pgon5~r~HKPn76d7esrK42Hf5cAZSu-3arEK1n4SQ__',
                    'https://s3-alpha-sig.figma.com/img/f9b6/3b16/9916dcf7c76da38fc038a97d736cf51b?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=hK8~5336zFPuggQzA-A2szdOkEsgAk3FmAMp3L9mtikLQTj4qiJkmCIYt-VJeWgK6xqRmQVWAuW8rkPlx3DpzXoMC-JnQXwrypa902Nva8a49xtXdhfJ0F6ETjjOiuWVp2kakbXiFXUUUmCiv6sRZyRpicVCycoijATqN6zTcujh-fgOb4T8gVQIx9dNLJr3Fz~hvxfH8l9C56UoKKlRVY1Z7yRo3SN-8GLvWf7bSnIUzzaEdlvSmcArRNJfde7u8733XgKWKxJ0TzbC8bs2VyGoZEoCxsSpz4S8D72~Ezr~n96oDOJAeWBKWP4DsKRc0WergYS61lOoquPNxN-PYw__',
                  ];

                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              imageUrls[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "White Ginseng Mas",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Radiance Refining Mask",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "\$29.00",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 8),
                      ],
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
