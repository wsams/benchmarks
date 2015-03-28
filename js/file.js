var fs = require("fs");

var fileName = "file.txt";
var passage = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n";

fs.writeFileSync(fileName, passage);
for (var i=0; i<1000; i++) {
    fs.appendFileSync(fileName, passage);
}
fs.unlinkSync(fileName);
