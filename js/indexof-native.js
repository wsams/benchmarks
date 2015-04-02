function indexOf(needle, haystack) {
    var i = haystack.length;
    while (i--) {
        if (haystack[i] === needle) {
            return i;
        }
    }
    return -1;
}

var baseWord = "benchmark";
var haystack = [];

var word;
for (var i = 0; i < 10000; i++) {
    word = baseWord + i;
    if (haystack.indexOf(word) === -1) {
        haystack.push(word);
    }
}
