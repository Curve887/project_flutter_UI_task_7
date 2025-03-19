import 'package:flutter/material.dart';
import 'package:project_flutter_ui/screens/cleaner.dart';
import 'package:project_flutter_ui/screens/filter.dart';

class SearchListPage extends StatefulWidget {
  @override
  State<SearchListPage> createState() => _SearchListPageState();
}

class _SearchListPageState extends State<SearchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: TextField(),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CleanersPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_list, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.7,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      index % 2 == 0
                          ? 'https://s3-alpha-sig.figma.com/img/7664/cc7c/cb915e235fa84b5352a503e37a60375e?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ZeYSq1BRJEDO~Ie7h~xXI1cAjfaNLetXXLdOf8ezHRHDwdynuigPSLjGH2lR3zcGG9RZ6jo3oFufuBSuQ1IezLUqc05YmYK98yUFIukt8NwWT07KgFzdQyfPsKXM5PiVqb2kRzk4gD1gmFRHYUOom2YVkDHHwsdXciqvsqOf0KIAEUavlK0S3wh9eId7tmKfY7jubMpsaJ5MDVWZG7dM3ixGb485PnRLB2vm83vc2CHPZB4hUneiqc~UA4HDBOBkeswutpif1niQdmsOQm4ko8VNfmgDzvAWfpZFaPKssz-j9EST0kadF~IaVurGwjrG~n-O5FRVxK8d40w4ImAeXA__'
                          : 'https://s3-alpha-sig.figma.com/img/f341/2d4d/538df79552fddae818bd0fe1a45e2097?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=lWw9VfpkJzgmx6ADUwA4BMtYO1gAbSjeXXSCBcPQZhpz-PjMCQtM22IyhmzlKuuzflIFKA4j~wqLu4tFIrK-VfzGZ7EtkWURHqLBBNTZqLq8RR7Da5QmA82LoXblSHxAPolBxAgfIgc4H0WelRlUvET1H56-szKkWdsuNsjGRBdEsY2WMSEqZrVTubCUyxpp8C8flNbSY3DTmfVHnPUqVACZCFVJ4HLC888xXPYBcMjkYAqbQetw8IFZZMGkyhADJAUGi1E38O3BVztjIue-YfR7yKfUWo7-AG6zgFFNzBCV~UYc8AH-8BgCoJ8~0DMbTO0oleEjULXEzPAPpEjs6g__',
                      height: 120,
                    ),
                  ),
                  Text(
                    'White Ginseng Mas',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Radiance Refining Mask',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$29.00',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(
                      index % 2 == 0 ? Icons.favorite : Icons.favorite_border,
                      color: index % 2 == 0 ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {},
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
