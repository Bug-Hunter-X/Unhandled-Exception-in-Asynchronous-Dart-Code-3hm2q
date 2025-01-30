```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Use the response body here
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      // Handle error appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions here, e.g., network errors, JSON decoding errors, etc.
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled by a higher level
  }
}
```