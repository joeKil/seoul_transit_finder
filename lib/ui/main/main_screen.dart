import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:seoul_transit_finder/data/data_source/lost_item_api.dart';
import 'package:seoul_transit_finder/data/repository/load_item_repository_impl.dart';
import 'package:seoul_transit_finder/ui/main/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String searchQuery = '';
  late MainViewModel viewModel;

  late final LostItemRepositoryImpl repository;

  @override
  void initState() {
    super.initState();
    viewModel = MainViewModel(LostItemApi(dio: Dio()));
    viewModel.fetchLostItems().then((_) {
      print('lost items데이터: ${viewModel.lostItems}');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print('item 갯수: ${viewModel.lostItems.length}');

    // 필터링
    final filteredItems = viewModel.lostItems
        .where((item) => item.itemName.contains(searchQuery))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
          },
          decoration: const InputDecoration(
            hintText: '검색',
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
      body: viewModel.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
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
