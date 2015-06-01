class DataManager {
  Table myTable;
  int rowCount;
  int colCount;
  Word[] words;
  int currentWord;
  
  DataManager() {
    myTable = loadTable("data.csv", "header");  
    rowCount = myTable.getRowCount();
    colCount = myTable.getColumnCount();
    currentWord = 0;
    
    words = new Word[rowCount];
    for(int i = 0; i < words.length; i++) {
      TableRow row = myTable.getRow(i);
      String wordText = row.getString("word");
      int x = row.getInt("x");
      int y = row.getInt("y");
      int size = row.getInt("size");
      int r = row.getInt("r");
      int g = row.getInt("g");
      int b = row.getInt("b");
      int a = row.getInt("a");
      
      words[i] = new Word(wordText, x, y, size, r, g, b, a);
    }
  }
  
  void display() {
    for(int i = 0; i < words.length; i++) {
      words[i].display();
    }  
  }
}
