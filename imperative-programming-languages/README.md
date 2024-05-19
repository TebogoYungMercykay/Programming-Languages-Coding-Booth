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
    000100 IDENTIFICATION DIVISION.
    000200 PROGRAM-ID. HELLO-WORLD.
    000300 DATA DIVISION.
    000400 WORKING-STORAGE SECTION.
    000500     77 X PIC 99.
    000600     77 Y PIC 99.
    000700     77 Z PIC 99.
    000800 PROCEDURE DIVISION.
    000900     SET X TO 10.
    001000     SET Y TO 25.
    001100     ADD X Y GIVING Z.
    001200     DISPLAY "X + Y = " Z "."
    001300     STOP RUN.
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
