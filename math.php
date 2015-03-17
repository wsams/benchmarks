<?php

for ($i = 0; $i < 1000; $i++) {
    for ($j = 0; $j < 1000; $j++) {
        $r = $i + $j;
        $g = cos($i) + sin($j);
        $b = tan($r - $g);
    }
}
