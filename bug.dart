```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Accessing data incorrectly, assuming jsonData is a map
      final data = jsonData['data']; // Throws an error if 'data' is missing or jsonData is not a map
      print(data);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // Handle error appropriately, perhaps retry or show user an error message
  }
}
```