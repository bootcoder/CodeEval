var displayBugCount = function(count){
  switch(true){
    case count > 6:
      return "Critical";
    case count > 4:
      return "High";
    case count > 2:
      return "Medium";
    case count > 0:
      return "Low";
    case count == 0:
      return "Done";
  };
};


var fs  = require("fs");
// fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
fs.readFileSync('input_sample.txt').toString().split('\n').forEach(function (line) {
    if (line != "") {

      var coders = line.split(" | ")[0];
      var designers = line.split(" | ")[1];
      var bugCount = 0;

      for(var i = 0; i<= coders.length; i += 1){
        if(coders[i] != designers[i]){
          bugCount += 1;
        };
      };

      console.log(displayBugCount(bugCount));

    };

});
