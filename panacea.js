
var fs  = require("fs");
fs.readFileSync('input_sample.txt').toString().split('\n').forEach(function (line) {
// fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      var splitLine = line.split("|")
      var hexNums = splitLine[0].split(" ")
      var binNums = splitLine[1].split(" ")
      hexNums.pop()
      binNums.shift()
      // console.log(hexNums)
      // console.log(binNums)
      var binNum = 0;
      var hexNum = 0;
      for(var i = 0; i < hexNums.length; i += 1){
        hexNum += parseInt(hexNums[i],16);
      }
      for(var i = 0; i < binNums.length; i += 1){
        binNum += parseInt(binNums[i],2);
      }

      if(hexNum <= binNum){
        console.log("True");
      }else{
        console.log("False");
      }
      // var hexSum = hexNums.reduce(function(a,b){ return parseInt(a,16) + parseInt(b,16)},0)
      // var binSum = binNums.reduce(function(a,b){ return parseInt(a,2) + parseInt(b,2)},0)
      // console.log('hexNums: '+hexSum);
      // console.log('binaryNums: '+binSum);
    }
});

// var sum = a.reduce(function(a, b) { return a + b; }, 0);

