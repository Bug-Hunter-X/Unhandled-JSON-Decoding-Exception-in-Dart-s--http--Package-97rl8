```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // This line is problematic if the response body is not valid JSON
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network requests or JSON decoding
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled at a higher level
  }
}
```