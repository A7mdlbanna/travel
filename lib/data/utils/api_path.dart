class ApiPaths {
  static const String base = 'https://talk-and-smoke.onrender.com';

  static const String auth = '/auth';
  static const String login = '$auth/signin';
  static const String signUp = '$auth/signup';

  static const String user = '/user';
  static String getUser(String userId) => '$user/get-user-profile/$userId';
  static String toggleMatch(bool match, String userId) => '$user/${match ? '' : 'un'}follow/$userId';
  static const String smokeWith = '$user/users-to-smake-with';
  static const String logout = '$user/logout';
  static const String deleteAcc = '$user/deleteuser';
  static const String editProfile = '$user/updateProfile';
  static const String changePassword = '$user/update-password';
  static const String changeEmail = '$user/changeemail';
  static const String changePhone = '$user/changephone';

  static const String getShare = '$user/get-app-link';

  static const String room = '/room';
  static const String createRoom = '$room/room';
  static const String getToken = '$room/token';
  static const String usersToInvite = '/$room/get-users-to-invite';
  static String getRoom(String id) => '/$room/get-participants-in-the-room/$id';
  static String invite(String roomId) => '$room/invite-people/$roomId/';
  static String join(String roomId) => '$room/join-room/$roomId/';
  static String leave(String roomId) => '$room/leave-room/$roomId/';

  static const String post = '/post';
  static const String addPost = '$post/addPost';
  static const String posts = '$post/posts';
  static String like(String id) => '$post/likePost/$id';
  static String unlike(String id) => '$post/unLikePost/$id';

  static const String comment = '/comment';
  static String addComment(String id) => '$comment/addcomment/$id';
  static String comments(String id) => '$comment/$id';


  static String chats = '/chat/getuserchat';
  static String chat(String id) => '/chat/messages/$id';
  static String send = '/chat/sendmessage';
}
