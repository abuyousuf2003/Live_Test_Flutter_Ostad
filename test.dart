

void main()
{
  List<Map<String,dynamic>>studentsInfo=[
   {"name": "Alice", "scores": [85, 90, 78]},

  {"name": "Bob", "scores": [88, 76, 95]},

  {"name": "Charlie", "scores": [90, 92, 85]}
  ]; 
  Map<String,double>resultOfAverage = {};
  for(var student in studentsInfo)
  {
    String name = student['name'];
    List scores = student['scores'];
    double sum = 0;
    for(var sc in scores){
      sum=sum+sc;
    }
    double avg = sum/scores.length;
    resultOfAverage[name] = double.parse(avg.toStringAsFixed(2));
  }

 var sorted = resultOfAverage.entries.toList()
 ..sort((a, b) => b.value.compareTo(a.value));
 Map<String, double> sortedResult = {
    for (var entry in sorted) entry.key: entry.value
  };
  print(sortedResult);

}