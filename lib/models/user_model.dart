class UserModel {
  final String kod;
  final String login;
  final String fio;
  final String role;

  UserModel({
    required this.kod,
    required this.login,
    required this.fio,
    required this.role,
  });
}

List<UserModel> userList = [
  UserModel(kod: 'Kod',login: 'Asliddin', fio: 'Yangiyev A\'zamjon', role: 'Adminstrator'),
  UserModel(kod: '1',login: 'user1', fio: 'Foydalanuvchi 1', role: 'Foydalanuvchi'),
  UserModel(kod: '2',login: 'user2', fio: 'Foydalanuvchi 2', role: 'Foydalanuvchi'),
  UserModel(kod: '3',login: 'user3', fio: 'Foydalanuvchi 3', role: 'Foydalanuvchi'),
  UserModel(kod: '4',login: 'user4', fio: 'Foydalanuvchi 4', role: 'Foydalanuvchi'),
];
