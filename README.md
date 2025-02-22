# Unhandled JSON Decoding Exception in Dart's `http` Package

This repository demonstrates a common error when using Dart's `http` package to fetch and parse JSON data. The `jsonDecode` function throws a `FormatException` if the response body is not valid JSON.  This example shows how to handle this exception gracefully.

## Bug Report

The `bug.dart` file contains code that attempts to decode JSON data without proper error handling.  If the API call returns non-JSON data, the app crashes.

## Solution

The `bugSolution.dart` file demonstrates how to improve the code by adding a `try-catch` block to handle the `FormatException` and other potential errors. The solution also includes more informative error messages.
