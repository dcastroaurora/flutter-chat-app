import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../models/user.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  final users = [
    User(uid: '1', name: 'Diego', email: 'diego@test.com', online: true),
    User(uid: '2', name: 'José', email: 'jose@test.com', online: true),
    User(uid: '3', name: 'Manuel', email: 'manuel@test.com', online: false),
    User(uid: '4', name: 'Frank', email: 'frank@test.com', online: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Name',
          style: TextStyle(color: Colors.black87),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.exit_to_app, color: Colors.black87),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.check_circle, color: Colors.blue[400]),
            // child: Icon(Icons.offline_bolt, color: Colors.red),
          )
        ],
      ),
      body: SmartRefresher(
        controller: _refreshController,
        // enablePullDown: true,
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
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }

  ListView _userListView() {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => _userTile(users[index]),
      separatorBuilder: (context, index) => Divider(),
      itemCount: users.length,
    );
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
    );
  }
}
