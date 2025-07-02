class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        n = len(nums)
        num_n = (n * (n+1))//2
        return num_n - sum(nums)