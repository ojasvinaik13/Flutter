void main(){
  var myMap = Map();
  myMap["name"] = "Ojasvi";
  myMap["year"] = 3;
  myMap["college"] = "KJSCE";
  
  print(myMap);
  print(myMap.containsValue("Ojasvi"));
  print(myMap.length);
  print(myMap.remove("year"));
  print(myMap);
}