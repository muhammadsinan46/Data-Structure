void myFunction(int n) {
  if (n <= 1) {
    return;
  }

  myFunction(n - 1);
  print(n);
  myFunction(n - 1);
}

void main() {
  myFunction(3); // Example usage with n = 3
}
