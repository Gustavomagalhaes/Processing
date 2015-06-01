class Person { // name
  // attributes
  int age;
  int pHeight;
  int pWeight;
  
  // constructor
  Person(int age1, int pHeight1, int pWeight1) {
    age = age1;
    pHeight = pHeight1;
    pWeight = pWeight1;  
  }
  
  // methods
  void sayAge() {
    println("I am ("+age+") years old."); 
  }
}
