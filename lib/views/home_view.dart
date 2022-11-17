import 'package:flutter/material.dart';
import 'package:paint_app/views/paint_picker_view.dart';
import 'package:paint_app/views/pencil_paint.dart';
import 'package:paint_app/views/rubber_view.dart';
import 'package:paint_app/views/save_view.dart';
import 'package:paint_app/views/text_view.dart';
import 'package:paint_app/views/undo_view.dart';

import '../constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appColor,
        title: Row(
          children: [
            Text(
              "Paint Karlo",
              style: kHeaderTextStyle,
            ),
            Image.asset(
              "assets/images/logo.png",
              scale: 8,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: const EdgeInsets.all(0),
            indicatorPadding: const EdgeInsets.all(0),
            tabs: [
              _individualTab("assets/images/undo.png"),
              _individualTab("assets/images/texticon.png"),
              _individualTab("assets/images/save.png"),
              _individualTab("assets/images/ruber.png"),
              _individualTab("assets/images/colorwheel.png"),
              _individualTab("assets/images/pensilicon.png"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                UndoView(),
                TextView(),
                SaveView(),
                RubberView(),
                PaintPickerView(),
                PencilView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _individualTab(String imagePath) {
    return Container(
      height: 50 + MediaQuery.of(context).padding.bottom,
      padding: const EdgeInsets.all(0),
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Tab(
        child: Image.asset(
          imagePath,
        ),
      ),
    );
  }
}
