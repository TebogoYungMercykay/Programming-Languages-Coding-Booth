000100 program statistics_program
000200     implicit none
000300     integer :: arr(5)
000400     integer :: smallest, largest, mode_value
000700     call readData(arr)
001000     smallest = findSmallest(arr)
001100     largest = findLargest(arr)
001200     mode_value = mode(arr)
001500     print *, "Smallest value: ", smallest
001600     print *, "Largest value: ", largest
001700     print *, "Mode value: ", mode_value
001900 contains
002100     subroutine readData(arr)
002200         integer, intent(out) :: arr(:)
002300         integer :: i
002500         print *, "Enter five integer values: "
002600         do i = 1, 5
002700             read(*, *) arr(i)
002800         end do
002900     end subroutine readData
003100     function findSmallest(arr) result(smallest)
003200         integer :: arr(:)
003300         integer :: smallest
003400         integer :: i
003600         smallest = arr(1)
003700         do i = 2, size(arr)
003800             if (arr(i) < smallest) then
003900                 smallest = arr(i)
004000             end if
004100         end do
004200     end function findSmallest
004400     function findLargest(arr) result(largest)
004500         integer :: arr(:)
004600         integer :: largest
004700         integer :: i
004900         largest = arr(1)
005000         do i = 2, size(arr)
005100             if (arr(i) > largest) then
005200                 largest = arr(i)
005300             end if
005400         end do
005500     end function findLargest
005700     function mode(arr) result(mode_value)
005800         integer :: arr(:)
005900         integer :: mode_value
006000         integer :: i, j, count, max_count
006200         max_count = 0
006300         do i = 1, size(arr)
006400             count = 0
006500             do j = 1, size(arr)
006600                 if (arr(j) == arr(i)) then
006700                     count = count + 1
006800                 end if
006900             end do
007000             if (count > max_count) then
007100                 max_count = count
007200                 mode_value = arr(i)
007300             end if
007400         end do
007500     end function mode
007700 end program statistics_program
