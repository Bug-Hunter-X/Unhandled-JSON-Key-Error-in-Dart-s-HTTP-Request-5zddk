```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      // Check if the JSON response has the 'data' key before access
      if (jsonBody is Map && jsonBody.containsKey('data')) {
        final data = jsonBody['data'];
        print('Data: $data');
      } else {
        print('The JSON response does not contain the expected key or is not a map.');
        // handle error as required
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Implement robust error handling, possibly including retries or alternative data sources
  }
}
```