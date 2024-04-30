# Imperative Programming Languages

### Installation:
- Ensure you have the necessary compilers installed:
    - Fortran: gfortran
    - COBOL: GnuCOBOL
- Installation Commands on Debian based systems
    - **Installing gfortran**
        ```bash
        sudo apt install gfortran
        ```
    - **Installing GnuCOBOL**
        ```bash
        sudo apt install gnucobol
        ```

### Example Codes
- **Fortran Code (hello.f)**:
    ```fortran
    000100 program hello
    000200     print *, 'Hello, World!'
    000300 end program hello
    ```

- **COBOL Code (hello.cob)**:
    ```cobol
    IDENTIFICATION DIVISION.
    PROGRAM-ID. hello.
    PROCEDURE DIVISION.
        DISPLAY "Hello, COBOL!".
        STOP RUN.
    ```

### Compiling and Running:
- **Compile Fortran Code**:
   ```bash
   gfortran -o hello_fortran hello.f
   ```

- **Compile COBOL Code**:
   ```bash
   cobc -x -o hello_cobol hello.cob
   ```

- **Run Compiled Programs**:
   ```bash
   ./hello_fortran
   ./hello_cobol
   ```
