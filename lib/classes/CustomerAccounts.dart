
class CustomerAccounts {
  final String username;
  final String password;
  final String role;
  final String address;
  final String profilepicture;

  const CustomerAccounts(
      {
        required this.profilepicture,
        required this.username,
      required this.password,
      required this.role,
      required this.address
      }
      );
}