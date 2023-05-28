import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants/app/tabbar_constants.dart';
import 'package:netflix_app/core/extension/context_extension/context_extension.dart';
import 'package:netflix_app/core/init/icon/app_icons.dart';
import 'package:netflix_app/feature/coming_soon_page/view/coming_soon_view.dart';
import 'package:netflix_app/feature/downloads_page/view/downloads_page_view.dart';
import 'package:netflix_app/feature/home__page/view/view/home_page_view.dart';
import 'package:netflix_app/feature/search_page/view/search_page_view.dart';
import 'package:netflix_app/feature/tabbar/model/tab_model.dart';

AppIcon get _icons => AppIcon.init();
TabBarConstants get _constants => TabBarConstants.init();

class AppTabBar extends StatelessWidget {
  final List<TabModel> _tabsItem = [
    TabModel(
      title: _constants.home,
      icon: _icons.items[0],
      child: const HomePageView(),
    ),
    TabModel(
      title: _constants.comingSoon,
      icon: _icons.items[1],
      child: const ComingSoonPageView(),
    ),
    TabModel(
      title: _constants.search,
      icon: _icons.items[2],
      child: const SearchPageView(),
    ),
    TabModel(
      title: _constants.downloads,
      icon: _icons.items[3],
      child: const DownloadPage(),
    ),
  ];
  AppTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabsItem.length,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: context.blackColor,
            child: TabBar(
              tabs: List.generate(
                _tabsItem.length,
                (index) => Tab(
                  text: _tabsItem[index].title,
                  icon: Icon(
                    _tabsItem[index].icon,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: _tabsItem.map((e) => e.child).toList(),
        ),
      ),
    );
  }
}
