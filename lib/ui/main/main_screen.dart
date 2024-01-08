import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    viewModel.fetchLostItems();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

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
      body: viewModel.isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: viewModel.lostItems.length,
              itemBuilder: (context, index) {
                final item = viewModel.lostItems[index];
                print('item index $index: ${item.itemName}');
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
