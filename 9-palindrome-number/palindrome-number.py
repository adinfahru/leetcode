class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False

        x_to_string = str(x)
        reverseX = x_to_string[::-1]

        if x_to_string == reverseX:
            return True
        else:
            return False