var fs  = require("fs");

fs.readFileSync('input_sample.txt').toString().split('\n').forEach(function (line) {
// fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    var results = "";
    var toUpCase = true;
    if (line !== "") {
      var splitLine = line.split("")
      for(var i in splitLine){
        if(/^[a-zA-Z]+$/.test(splitLine[i])){
          toUpCase = !toUpCase
          if(!toUpCase){
            results += splitLine[i].toUpperCase();
          }else{
          results += splitLine[i].toLowerCase();
          }
        }else{
          results += splitLine[i];
        }
      }
      console.log(results);
    }
});
