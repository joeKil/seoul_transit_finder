import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String searchQuery = '';
  List<Map<String, String>> items = [
    {
      'name': 'shoes',
      'registrationDate': '2021-02-02',
      'collectionDate': '2021-02-03',
      'status': '안좋음',
      'type': '의류',
      'storageLocation': '서울역'
    },
    {
      'name': 'bag',
      'registrationDate': '2021-03-05',
      'collectionDate': '2021-03-10',
      'status': '양호',
      'type': '액세서리',
      'storageLocation': '부산역'
    },
    {
      'name': 'jacket',
      'registrationDate': '2021-04-15',
      'collectionDate': '2021-04-20',
      'status': '매우 좋음',
      'type': '의류',
      'storageLocation': '대구역'
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredItems = items.where((item) {
      return item['name']!.toLowerCase().contains(searchQuery.toLowerCase()) ||
          item['registrationDate']!.contains(searchQuery) ||
          item['collectionDate']!.contains(searchQuery);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
          },
          decoration: InputDecoration(
            hintText: '검색',
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredItems.length,
        itemBuilder: (context, index) {
          var item = filteredItems[index];
          return Card(
            child: ListTile(
              title: Text(item['name']!),
              subtitle: Text('등록일자: ${item['registrationDate']}\n' +
                  '수령일자: ${item['collectionDate']}\n' +
                  '상태: ${item['status']}\n' +
                  '종류: ${item['type']}\n' +
                  '보관장소: ${item['storageLocation']}'),
            ),
          );
        },
      ),
    );
  }
}
