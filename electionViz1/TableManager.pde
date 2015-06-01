class TableManager {
  Table myTable;
  int rowCount;
  int colCount;
  Word[] words;
  int currentWord;
  
  TableManager() {
    myTable = loadTable("words.csv", "header");
    rowCount = myTable.getRowCount();
    colCount = myTable.getColumnCount();
    println(rowCount);
    println(colCount);
    currentWord = 0;
    
    // store words in word array
    words = new Word[rowCount];
    for(int i = 0; i < words.length; i++) {
      TableRow row = myTable.getRow(i);
      String wordText = row.getString("words");
      float average = row.getFloat("average");
      int[] occurences = new int[colCount-2];
      for (int j=0; j < occurences.length; j++) {
        occurences[j] = row.getInt(j+2);
      }
      println(occurences);
      words[i] = new Word(wordText, average, occurences);
    }
    
    int tempMax = -10000;
    for(int row = 0; row < rowCount; row++) {
      for(int col = 2; col < colCount; col++) {
        int testValue = myTable.getInt(row,col);
        if (testValue > tempMax) {
          tempMax = testValue;
        }
      }
    }
    println("TempMax: " + tempMax);
  }
  
  void display() {
    displayWord();
    displayPoints();
  }
  
  void displayWord() {
    textAlign(CENTER);
    noStroke();
    fill(0);
    text(words[currentWord].myWord, width/2, 25);
    text(words[currentWord].average, width/2, 50);
  }
  
  void displayPoints() {
    noStroke();
    fill(255,0,0);
    int inset = myAxes.inset;
    float spacing = myAxes.spacing;
    for (int i = 1; i < 65; i++) {
      ellipse(i * spacing + inset, height-inset, 5,5);
    }
  }
  
}
