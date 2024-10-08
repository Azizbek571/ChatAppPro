import 'package:chat_app_pro/components/my_drawer.dart';
import 'package:chat_app_pro/components/user_tile.dart';
import 'package:chat_app_pro/pages/chat_page.dart';
import 'package:chat_app_pro/services/auth/auth_service.dart';
import 'package:chat_app_pro/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();


  // void logout() {
  //   final _auth = AuthService();
  //   _auth.signOut();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
        stream: _chatService.getUsersStream(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Error");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading...");
          }
          return ListView(
            children: snapshot.data!
                .map<Widget>(
                    (userData) => _buildUserListItem(userData, context))
                .toList(),
          );
        });
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    if (userData["email"] != _authService.getCurrentUser()!.email) {
      return UserTile(
        text: userData["email"],
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatPage(
                recieverEmail: userData["email"],
                recieverID: userData["uid"],
              ),
            ),
          );
        }
        );
      
    }else{return Container();}
  }
}
