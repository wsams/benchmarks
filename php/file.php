<?php

$fileName = "file.txt";
$passage = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n";

file_put_contents($fileName, $passage);
for ($i=0; $i<1000; $i++) {
    file_put_contents($fileName, $passage, FILE_APPEND);
}
unlink($fileName);
