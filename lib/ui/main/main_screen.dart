import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:seoul_transit_finder/data/data_source/lost_item_api.dart';
import 'package:seoul_transit_finder/data/model/lost_item_info.dart';
import 'package:seoul_transit_finder/data/repository/load_item_repository_impl.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String searchQuery = '';
  List<LostItemInfo> items = [];

  late final LostItemRepositoryImpl repository;

  @override
  void initState() {
    super.initState();
    repository =
        LostItemRepositoryImpl(LostItemApi(dio: Dio())); // 여기서 LostItemApi 초기화
    _loadData();
  }

  void _loadData() async {
    try {
      final result = await repository.getLostItems(''); // 전체 데이터 불러오기
      print('Result: $result');
      result.when(
        success: (data) {
          print('Data: $data');
          setState(() {
            items = data;
          });
        },
        error: (e) => print('Error fetching data: $e'),
      );
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<LostItemInfo> filteredItems = items.where((item) {
      return item.itemName.toLowerCase().contains(searchQuery.toLowerCase()) ||
          item.registrationDate.contains(searchQuery) ||
          item.foundDate.contains(searchQuery);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
            _loadData();
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
          final item = filteredItems[index];
          return Card(
            child: ListTile(
              title: Text(item.itemName),
              subtitle: Text('등록일자: ${item.registrationDate}\n' +
                  '수령일자: ${item.foundDate}\n' +
                  '상태: ${item.lostItemStatus}\n' +
                  '종류: ${item.lostItemType}\n' +
                  '보관장소: ${item.storageLocation}'),
            ),
          );
        },
      ),
    );
  }
}
