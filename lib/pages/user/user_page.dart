import '../../services/message_services.dart';
import '../../services/socket_services.dart';
import '../../services/user_service.dart';

import '../../services/auth_services.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:provider/provider.dart';

import '../../models/user/user.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  List<User> users = [];

  @override
  void initState() {
    this._loadUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.watch<AuthService>().user.name,
          style: TextStyle(color: Colors.black87),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.exit_to_app, color: Colors.black87),
          onPressed: () {
            context.read<SocketService>().disconnect();
            AuthService.deleteToken();
            Navigator.pushReplacementNamed(context, 'login');
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: context.watch<SocketService>().serverStatus ==
                    ServerStatus.Online
                ? Icon(Icons.check_circle, color: Colors.blue[400])
                : Icon(Icons.offline_bolt, color: Colors.red),
          )
        ],
      ),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: _loadUsers,
        header: WaterDropHeader(
          complete: Icon(
            Icons.check,
            color: Colors.blue[400],
          ),
          waterDropColor: Colors.blue[400],
        ),
        child: _userListView(),
      ),
    );
  }

  void _loadUsers() async {
    users = await UserService().getUsers();
    setState(() {});
    _refreshController.refreshCompleted();
  }

  Widget _userListView() {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => _userTile(users[index]),
      separatorBuilder: (_, index) => Divider(),
      itemCount: users.length,
    );
    // return FutureBuilder(
    //   future: context.watch<UserService>().getUsers(),
    //   builder: (_, AsyncSnapshot<List<User>> snapShot) {
    //     if (snapShot.connectionState == ConnectionState.done) {
    //       users = snapShot.data;
    //       return ListView.separated(
    //         physics: BouncingScrollPhysics(),
    //         itemBuilder: (context, index) => _userTile(users[index]),
    //         separatorBuilder: (_, index) => Divider(),
    //         itemCount: snapShot.data.length,
    //       );
    //     } else {
    //       return Center(child: CircularProgressIndicator());
    //     }
    //   },
    // );
  }

  ListTile _userTile(User user) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.email),
      leading: CircleAvatar(
        child: Text(user.name.substring(0, 2)),
        backgroundColor: Colors.blue[100],
      ),
      trailing: Container(
        width: 10.0,
        height: 10.0,
        decoration: BoxDecoration(
          color: user.online ? Colors.green[300] : Colors.red,
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onTap: () {
        context.read<MessageService>().userTo = user;
        Navigator.pushNamed(context, 'chat');
      },
    );
  }
}
