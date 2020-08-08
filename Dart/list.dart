void main() {
  List<int> myList = List();
  myList.add(13);
  myList.add(1);
  myList.add(7);
  myList.add(26);
  myList.add(91);
  myList.add(3);
  myList.add(67);
  myList.add(2);
  myList.add(66);
  myList.add(48);
  print(myList);
  
  var max=myList[0];
  for(var i=0;i<myList.length;i++)
  {
    if(myList[i]>max)
      max=myList[i];
  }
  print(max);
}
