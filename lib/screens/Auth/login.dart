import 'package:http/http.dart' as http;

// ...

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  Future<String> authenticate(String username, String password) async {
    final url = Uri.parse('https://progres.mesrs.dz/api/authentication/v1/');
    final response = await http.post(
      url,
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final token = response.body;
      return token;
    } else {
      throw Exception('Failed to authenticate');
    }
  }

  // ...

  ElevatedButton(
    onPressed: () async {
      if (_formKey.currentState!.validate()) {
        try {
          final token = await authenticate(email, password);
          // Use the token for further API requests
          // ...
        } catch (e) {
          print(e);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invalid email or password'),
            ),
          );
        }
      }
    },
    // ...
  ),
}