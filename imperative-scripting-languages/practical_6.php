<?php
    if ($argc != 3) {
        echo "Usage: php script.php <filename> <word>\n";
        exit(1);
    }

    $filename = $argv[1];
    $word = $argv[2];

    if (file_exists($filename)) {
        $fileContent = file_get_contents($filename);
        $fileContent = strtolower($fileContent);
        $fileContent = preg_replace("/[^a-z]/", "", $fileContent);

        $reversedContent = strrev($fileContent);

        $count = substr_count($reversedContent, $word);

        $htmlOutput = <<<HTML
            <!DOCTYPE html>
            <html>
            <head>
                <meta charset="UTF-8">
                <title>Word Count</title>
            </head>
            <body>
                <p>Converted String: $fileContent</p>
                <p>Reversed Word: $reversedContent</p>
                <p>Matches: $count</p>
            </body>
            </html>
            HTML;

        echo $htmlOutput;
    } else {
        $htmlOutput = <<<HTML
            <!DOCTYPE html>
            <html>
            <head>
                <meta charset="UTF-8">
                <title>Word Count</title>
            </head>
            <body>
                <p>File not found.</p>
            </body>
            </html>
            HTML;

        echo $htmlOutput;
    }
?>