import 'package:flutter/material.dart';
import 'package:flutter_subway_info_app/presentation/view_model/main_state.dart';
import 'package:flutter_subway_info_app/presentation/view_model/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final MainViewModel viewModel = context.watch<MainViewModel>();
    final MainState state = viewModel.state;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                    hintText: '역 이름을 입력하세요',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.search_outlined),
                      onPressed: () {
                        viewModel.querySubwayInfo(textEditingController.text);
                      },
                    )),
              ),
              const SizedBox(height: 32),
              state.isLoading
                  ? const CircularProgressIndicator()
                  : Expanded(
                      child: ListView.builder(
                        itemCount: state.subwayInfoModels.length,
                        itemBuilder: (context, index) {
                          return Text(state.subwayInfoModels[index].toString());
                        },
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
