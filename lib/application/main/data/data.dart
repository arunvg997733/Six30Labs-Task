import 'package:six30labstask/pesentation/cart_screen/cart_screen.dart';
import 'package:six30labstask/pesentation/home_screen/home_screen.dart';
import 'package:six30labstask/pesentation/notification_screen/notification_screen.dart';
import 'package:six30labstask/pesentation/profile_screen/profile_screen.dart';

class MainData {
  static List pages = [
    const HomeScreen(),
    const CartScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];
}
