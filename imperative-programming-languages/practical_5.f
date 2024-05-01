000100 program statistics_program
000200     implicit none
000300     integer, dimension(5) :: arr  ! Declare an integer array of size 5
000400     integer :: smallest, largest, mode_value  ! Declare variables for smallest, largest, and mode values
000600     call readData(arr)  ! Call subroutine to read data into the array
000700     smallest = findSmallest(arr)  ! Find the smallest value in the array
000800     largest = findLargest(arr)  ! Find the largest value in the array
000900     mode_value = mode(arr)  ! Find the mode of the array
001100     print '(A, I0)', "Smallest value: ", smallest  ! Print the smallest value
001200     print '(A, I0)', "Largest value: ", largest  ! Print the largest value
001300     print '(A, I0)', "Mode value: ", mode_value  ! Print the mode value
001500 contains
001700     subroutine readData(arr)  ! Subroutine to read data into the array
001800         integer, intent(out) :: arr(:)  ! Declare the array as output
001900         integer :: i  ! Declare loop counter
002100         print *, "Enter five integer values: "  ! Prompt for input
002200         do i = 1, 5  ! Loop to read 5 values
002300             read(*, *) arr(i)  ! Read a value into the array
002400         end do  ! End of loop
002500     end subroutine readData  ! End of subroutine
002700     function findSmallest(arr) result(smallest)  ! Function to find the smallest value in the array
002800         integer, intent(in) :: arr(:)  ! Declare the array as input
002900         integer :: smallest  ! Declare the result variable
003100         smallest = minval(arr)  ! Find the smallest value in the array
003200     end function findSmallest  ! End of function
003400     function findLargest(arr) result(largest)  ! Function to find the largest value in the array
003500         integer, intent(in) :: arr(:)  ! Declare the array as input
003600         integer :: largest  ! Declare the result variable
003800         largest = maxval(arr)  ! Find the largest value in the array
003900     end function findLargest  ! End of function
004100     function mode(arr) result(mode_value)  ! Function to find the mode of the array
004200         integer, intent(in) :: arr(:)  ! Declare the array as input
004300         integer :: mode_value  ! Declare the result variable
004400         integer :: i, j, counter, max_count  ! Declare loop counters and variables for mode calculation
004600         max_count = 0  ! Initialize max_count
004700         do i = 1, size(arr)  ! Loop over the array
004800             counter = count(arr == arr(i))  ! Count the number of times the current value appears in the array
004900             if (counter > max_count) then  ! If the count is greater than max_count...
005000                 max_count = counter  ! ...then update max_count...
005100                 mode_value = arr(i)  ! ...and update mode_value
005200             end if  ! End of if statement
005300         end do  ! End of loop
005400     end function mode  ! End of function
005600 end program statistics_program  ! End of program