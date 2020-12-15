import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste/core/colors.dart';
import 'package:teste/core/components/app_bottom_bar_item.dart';
import 'package:teste/core/components/visit_list_item.dart';
import 'package:teste/ui/pages/home/controler/home_page_controler.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final homePageContrler = Get.put(HomePageContrler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx( () => homePageContrler.isLogger.value ? Center(child: CircularProgressIndicator(),)
      : Container(
        child: Obx( () => ListView.builder(
          itemCount: homePageContrler.visitList.length,
          itemBuilder: (_, index) {
            return VisitListItem(image: index,);
          },
        ),),
      ),),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          color: appPrimaryDarkColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              AppBottomBarItem(
                icon: Icon(Icons.menu),
                label: 'Visita',
                onPressed: () => null,
              ),
              Expanded(
                child: Container(),
              ),
              AppBottomBarItem(
                icon: Icon(Icons.list),
                label: 'Tarefa',
                onPressed: () => null,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          homePageContrler.add()
        },
        tooltip: 'Increment Counter',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: appPrimaryDarkColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
