# Unhandled JSON Key Error in Dart HTTP Request

This repository demonstrates a common error when handling JSON responses in Dart: assuming the presence of a specific key. The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a robust solution.

The bug arises from directly accessing a key ('data' in this case) without checking for its existence. If the server returns JSON lacking this key, the application crashes.

The solution involves verifying the key's existence before access, adding error handling for missing or incorrectly formatted JSON.

This example highlights the importance of defensive programming when interacting with external APIs.