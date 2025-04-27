import 'package:fruites_e_commerce/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage, name;

  BottomNavigationBarEntity(
      {required this.activeImage,
      required this.inActiveImage,
      required this.name});
}

List<BottomNavigationBarEntity> bottomNavigationBarItems = [
  BottomNavigationBarEntity(
    activeImage: Assets.imagesHomeSelected,
    inActiveImage: Assets.imagesHome,
    name: 'الرئيسية',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imagesProductsSelected,
    inActiveImage: Assets.imagesProducts,
    name: 'المنتجات',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imagesShoppingCartSelected,
    inActiveImage: Assets.imagesShoppingCart,
    name: 'سلة التسوق',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.imagesUserSelected,
    inActiveImage: Assets.imagesUser,
    name: 'حسابي',
  ),
];
