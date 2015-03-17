0.upto(1000) do |i|
    0.upto(1000) do |j|
        r = i + j;
        g = Math.cos(i) + Math.sin(j);
        b = Math.tan(r - g);
    end
end
