for (var i = 0; i < 1000; i++) {
    for (var j = 0; j < 1000; j++) {
        r = i + j;
        g = Math.cos(i) + Math.sin(j);
        b = Math.tan(r - g);
    }
}
