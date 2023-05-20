import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:easyflow/core/routes/app_pages.dart';
import 'package:easyflow/layers/modules/equipment/pages/equipment_page.dart';
import 'package:easyflow/layers/modules/horary/pages/horary_page.dart';
import 'package:easyflow/layers/modules/initial/pages/initial_page.dart';
import 'package:easyflow/layers/modules/main/main_controller.dart';
import 'package:easyflow/layers/modules/main/widgets/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: controller.sideMenuController,
            style: SideMenuStyle(
              backgroundColor: Color(0xFF1F2A35),
              selectedColor: Color(0xFF00386B),
              unselectedIconColor: Colors.white,
              selectedTitleTextStyle: TextStyle(color: Colors.white),
              unselectedTitleTextStyle: TextStyle(color: Colors.white),
              compactSideMenuWidth: 60,
              itemHeight: 56,
            ),
            title: Container(
              height: 180,
              width: double.infinity,
              alignment: Alignment.center,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/fotos-premium/pessoa-pensando-com-o-dedo-na-cabeca-isolado-homem-pensativo-com-o-dedo-na-cabeca-com-espaco-de-copia_550253-1942.jpg'),
                ),
                textColor: Colors.white,
                title: Text('Michael Alves Pereira'),
                subtitle: Text(
                  'Representante',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Inicio',
                iconWidget: CircleIconWidget(icon: Icons.home_filled),
                onTap: (page, __) {
                  controller.sideMenuController.changePage(page);
                  controller.pageController.jumpToPage(page);
                },
              ),
              SideMenuItem(
                priority: 1,
                title: 'Horários',
                iconWidget: CircleIconWidget(icon: Icons.event_note),
                onTap: (page, __) {
                  controller.sideMenuController.changePage(page);
                  controller.pageController.jumpToPage(page);
                },
              ),
              SideMenuItem(
                priority: 2,
                title: 'Equipamentos',
                iconWidget:
                    CircleIconWidget(icon: Icons.desktop_windows_outlined),
                onTap: (page, __) {
                  controller.sideMenuController.changePage(page);
                  controller.pageController.jumpToPage(page);
                },
              ),
              SideMenuItem(
                priority: 3,
                title: 'Solicitações',
                iconWidget: CircleIconWidget(icon: Icons.fact_check),
                onTap: (page, __) {
                  controller.sideMenuController.changePage(page);
                  controller.pageController.jumpToPage(page);
                },
              ),
              SideMenuItem(
                priority: 4,
                title: 'Daily',
                iconWidget: CircleIconWidget(icon: Icons.diversity_3),
                onTap: (page, __) {
                  controller.sideMenuController.changePage(page);
                  controller.pageController.jumpToPage(page);
                },
              ),
              SideMenuItem(
                priority: 5,
                title: 'Reclamações',
                iconWidget:
                    CircleIconWidget(icon: Icons.my_library_books_rounded),
                onTap: (page, __) {
                  controller.sideMenuController.changePage(page);
                  controller.pageController.jumpToPage(page);
                },
              ),
              SideMenuItem(
                priority: 6,
                title: 'Sobre',
                iconWidget: CircleIconWidget(icon: Icons.info_outline),
                onTap: (page, __) {
                  controller.sideMenuController.changePage(page);
                  controller.pageController.jumpToPage(page);
                },
              ),
              SideMenuItem(
                priority: 7,
                title: 'Sair',
                iconWidget: CircleIconWidget(
                  icon: Icons.logout,
                  backgroundColor: Color(0xFFFFD4D6),
                  foregroundColor: Color(0xFFEF5157),
                ),
                onTap: (_, __) => Navigator.of(context).pushNamed(Routes.LOGIN),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              children: [
                InitialPage(),
                HoraryPage(),
                EquipmentPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
