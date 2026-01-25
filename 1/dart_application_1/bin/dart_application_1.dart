//import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;


void main() {
  List<int> list= [25, 42, 79, 12];

  list.sort((int a, int b){
    return a.compareTo (b);
  });
 
 print(list);

  list.map((int el){
  return el*2;
  });
  
 print(list);

}