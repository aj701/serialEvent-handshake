void serialEvent (Serial myPort) {
  String inputString = myPort.readStringUntil('\n');
  if (inputString != null) {
    inputString = trim(inputString);
    if (firstContact == false) {
      if (inputString.equals("A")) {
        myPort.clear();
        firstContact = true;
        myPort.write('A');
      }
    } else {
      int values[] = int(split(inputString, ','));

      for (int valueNum = 0; valueNum < values.length; valueNum++) {
        print("values" + valueNum + ":" + values[valueNum] + "\t");
      }
      println();
      if (values.length > 2) {
        red=values[0];
        green=values[1];
        blue=values[2];
      }
    }
    myPort.write("A");
  }
}
