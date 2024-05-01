000100 program statistics_program
000200     implicit none
000300     integer, dimension(5) :: arr
000400     integer :: smallest, largest, mode_value
000600     call readData(arr)
000700     smallest = findSmallest(arr)
000800     largest = findLargest(arr)
000900     mode_value = mode(arr)
001100     print '(A, I0)', "Smallest value: ", smallest
001200     print '(A, I0)', "Largest value: ", largest
001300     print '(A, I0)', "Mode value: ", mode_value
001500 contains
001700     subroutine readData(arr)
001800         integer, intent(out) :: arr(:)
001900         integer :: i
002100         print *, "Enter five integer values: "
002200         do i = 1, 5
002300             read(*, *) arr(i)
002400         end do
002500     end subroutine readData
002700     function findSmallest(arr) result(smallest)
002800         integer, intent(in) :: arr(:)
002900         integer :: smallest
003100         smallest = minval(arr)
003200     end function findSmallest
003400     function findLargest(arr) result(largest)
003500         integer, intent(in) :: arr(:)
003600         integer :: largest
003800         largest = maxval(arr)
003900     end function findLargest
004100     function mode(arr) result(mode_value)
004200         integer, intent(in) :: arr(:)
004300         integer :: mode_value
004400         integer :: i, j, counter, max_count
004600         max_count = 0
004700         do i = 1, size(arr)
004800             counter = count(arr == arr(i))
004900             if (counter > max_count) then
005000                 max_count = counter
005100                 mode_value = arr(i)
005200             end if
005300         end do
005400     end function mode
005600 end program statistics_program