import 'package:flutter/cupertino.dart';

import '../pages/chat/chat_page.dart';
import '../pages/loading/loading_page.dart';
import '../pages/login/login_page.dart';
import '../pages/register/register_page.dart';
import '../pages/user/user_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'users': (_) => UserPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};
