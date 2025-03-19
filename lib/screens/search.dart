import 'package:flutter/material.dart';
import 'package:project_flutter_ui/screens/searchlist.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
        title: TextField(
          decoration: InputDecoration(
            hintText: 'find your favorite product ...',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Night Cream'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Day Cream'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchListPage(),
                        ),
                      );
                    },
                    child: Text('See All'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Popular search',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildPopularItem(
              'White Ginseng Purify Mask',
              '1000 searches',
              'https://s3-alpha-sig.figma.com/img/7664/cc7c/cb915e235fa84b5352a503e37a60375e?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ZeYSq1BRJEDO~Ie7h~xXI1cAjfaNLetXXLdOf8ezHRHDwdynuigPSLjGH2lR3zcGG9RZ6jo3oFufuBSuQ1IezLUqc05YmYK98yUFIukt8NwWT07KgFzdQyfPsKXM5PiVqb2kRzk4gD1gmFRHYUOom2YVkDHHwsdXciqvsqOf0KIAEUavlK0S3wh9eId7tmKfY7jubMpsaJ5MDVWZG7dM3ixGb485PnRLB2vm83vc2CHPZB4hUneiqc~UA4HDBOBkeswutpif1niQdmsOQm4ko8VNfmgDzvAWfpZFaPKssz-j9EST0kadF~IaVurGwjrG~n-O5FRVxK8d40w4ImAeXA__',
            ),
            _buildPopularItem(
              'White Ginseng Purify Mask',
              '500 searches',
              'https://s3-alpha-sig.figma.com/img/f341/2d4d/538df79552fddae818bd0fe1a45e2097?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=lWw9VfpkJzgmx6ADUwA4BMtYO1gAbSjeXXSCBcPQZhpz-PjMCQtM22IyhmzlKuuzflIFKA4j~wqLu4tFIrK-VfzGZ7EtkWURHqLBBNTZqLq8RR7Da5QmA82LoXblSHxAPolBxAgfIgc4H0WelRlUvET1H56-szKkWdsuNsjGRBdEsY2WMSEqZrVTubCUyxpp8C8flNbSY3DTmfVHnPUqVACZCFVJ4HLC888xXPYBcMjkYAqbQetw8IFZZMGkyhADJAUGi1E38O3BVztjIue-YfR7yKfUWo7-AG6zgFFNzBCV~UYc8AH-8BgCoJ8~0DMbTO0oleEjULXEzPAPpEjs6g__',
            ),
            SizedBox(height: 20),
            Text(
              'Popular category',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildPopularItem(
              'Cleansear',
              '',
              'https://s3-alpha-sig.figma.com/img/7664/cc7c/cb915e235fa84b5352a503e37a60375e?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ZeYSq1BRJEDO~Ie7h~xXI1cAjfaNLetXXLdOf8ezHRHDwdynuigPSLjGH2lR3zcGG9RZ6jo3oFufuBSuQ1IezLUqc05YmYK98yUFIukt8NwWT07KgFzdQyfPsKXM5PiVqb2kRzk4gD1gmFRHYUOom2YVkDHHwsdXciqvsqOf0KIAEUavlK0S3wh9eId7tmKfY7jubMpsaJ5MDVWZG7dM3ixGb485PnRLB2vm83vc2CHPZB4hUneiqc~UA4HDBOBkeswutpif1niQdmsOQm4ko8VNfmgDzvAWfpZFaPKssz-j9EST0kadF~IaVurGwjrG~n-O5FRVxK8d40w4ImAeXA__',
            ),
            _buildPopularItem(
              'Toner',
              '',
              'https://s3-alpha-sig.figma.com/img/f341/2d4d/538df79552fddae818bd0fe1a45e2097?Expires=1743379200&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=lWw9VfpkJzgmx6ADUwA4BMtYO1gAbSjeXXSCBcPQZhpz-PjMCQtM22IyhmzlKuuzflIFKA4j~wqLu4tFIrK-VfzGZ7EtkWURHqLBBNTZqLq8RR7Da5QmA82LoXblSHxAPolBxAgfIgc4H0WelRlUvET1H56-szKkWdsuNsjGRBdEsY2WMSEqZrVTubCUyxpp8C8flNbSY3DTmfVHnPUqVACZCFVJ4HLC888xXPYBcMjkYAqbQetw8IFZZMGkyhADJAUGi1E38O3BVztjIue-YfR7yKfUWo7-AG6zgFFNzBCV~UYc8AH-8BgCoJ8~0DMbTO0oleEjULXEzPAPpEjs6g__',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularItem(String title, String subtitle, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              if (subtitle.isNotEmpty)
                Text(subtitle, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
