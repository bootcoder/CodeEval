var row_distances = [];

var splitArray = function(element, index, array){
  distance_segment = element.split(",")[1]
  if(distance_segment){
    row_distances.push(distance_segment);
  };
};

var fs  = require("fs");
// fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
fs.readFileSync('input_sample.txt').toString().split('\n').forEach(function (line) {
    row_distances = [];
    if (line != "") {
      line.split(";").forEach(splitArray);
    };
    row_distances.sort(function(a,b){ return a-b });
    var results = [parseInt(row_distances[0])];
    for(var i = 0; i < row_distances.length; i += 1){
      var diff = row_distances[i] - row_distances[i-1];
      if(Number.isInteger(diff)){
        results.push(diff);
      };
    };
    if(results.length > 1){
      console.log(results.join(","));
    };
});
