bool isWhite(int index) {
  int x = index ~/ 8; //give us the integer division: for Row
  int y = index % 8; //give us an integer for division: for Column

  //Based on the maths colors will be displayed.
  bool isWhite = (x + y) % 2 == 0;
  return isWhite;
}
