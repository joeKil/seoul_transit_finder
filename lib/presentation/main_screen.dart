import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String searchQuery = '';
  List<Map<String, String>> items = [
    // 여기에 테스트 데이터를 넣어.
    // 예: {'name': '신발', 'registrationDate': '2021-02-02', ... },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredItems = items.where((item) {
      return item['name']!.contains(searchQuery) ||
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
