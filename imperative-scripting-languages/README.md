# Word Count Scripts Documentation

These scripts are designed to count the number of occurrences of a specific word in a text file. The scripts are implemented in two languages: Perl and PHP.

- Example Text File, `input.txt`.
    ```text
    Madam, here is Adam
    Adam, look HERE at 1
    ```

## Perl Script

- ### Usage

    - ### `Format`:

        ```bash
        perl script.pl <filename> <word>
        ```

    - ### `Example`:

        ```bash
        chmod +x practical_6.pl
        perl practical_6.pl input.txt mad
        ```

- ### Description

    The Perl script reads the content of the specified file, converts it to lower case, removes all non-alphabetic characters, and then counts the occurrences of the specified word in the processed string.

    If the file does not exist, the script prints "File not found."

- ### Requirements

    - Perl 5

## PHP Script

- ### Usage

    - ### `Format`:

        ```bash
        php script.php <filename> <word>
        ```

    - ### `Example`:

        ```bash
        php practical_6.php input.txt mad
        ```

- ### Description

    The PHP script works similarly to the Perl script, but it also generates HTML output. The output includes the processed string, the reversed string, and the count of the occurrences of the specified word.

    If the file does not exist, the script generates HTML output with the message "File not found."

- ### Requirements

    - PHP 7

## Notes

- The scripts expect the filename and the word as command line arguments.
- The word count is case-insensitive and ignores non-alphabetic characters.
- The PHP script generates HTML output that can be viewed in a web browser.

---
---