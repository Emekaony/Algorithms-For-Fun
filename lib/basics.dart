void main() {
  callSlowString();
}

// make an asynchronous function that delays and returns a string
Future<String> slowString() {
  return Future.delayed(const Duration(seconds: 3), () => "slowwww");
}

// now use this function to call the async method
Future<void> callSlowString() async {
  final start = DateTime.now();
  await slowString().then((response) => {print("the response is $response")});
  final end = DateTime.now().difference(start);
  print("elapsed time: ${end.inMilliseconds}ms");
}
