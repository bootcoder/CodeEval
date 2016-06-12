var results = "";
var toUpCase = false;
var fs  = require("fs");

var swapCase = function(element){
  if(!toUpCase){
    toUpCase = !toUpCase
    return element.toUpperCase();
  }else{
    toUpCase = !toUpCase
    return element.toLowerCase();
  }
}

var checkCase = function(element, index, array){
  if(/^[a-zA-Z]+$/.test(element)){
    results += swapCase(element);
  }else{
    results += element;
  }
}
fs.readFileSync('input_sample.txt').toString().split('\n').forEach(function (line) {
// fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      results = "";
      line.split("").forEach(checkCase);
      console.log(results);
    }
});
