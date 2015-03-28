file_name = "file.txt";
passage = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n";

f = File.new(file_name, 'w')
f.write(passage)
f.close

f = File.new(file_name, 'a')
0.upto(999) do |x|
    f.write(passage)
end
f.close

File.unlink(file_name)
