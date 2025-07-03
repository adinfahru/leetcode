class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        m = len(matrix)  #3
        n = len(matrix[0]) #4

        total_elements = m * n #12

        left = 0
        right = total_elements - 1

        while left <= right:
            mid = (left + right) // 2

            row = mid // n
            col = mid % n

            guess = matrix[row][col]

            if guess == target:
                return True
            elif guess > target:
                right =  mid - 1
            else:
                left = mid + 1
        return False



