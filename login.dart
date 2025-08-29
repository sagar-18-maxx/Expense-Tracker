import 'dart:io';

void main() {
  // Step 1: Login system
  const username = "admin";
  const password = "1234";

  stdout.write("Enter username: ");
  String? inputUser = stdin.readLineSync();

  stdout.write("Enter password: ");
  String? inputPass = stdin.readLineSync();

  if (inputUser == username && inputPass == password) {
    print("\n✅ Login successful!\n");
