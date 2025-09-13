class Solution:
    def maxFreqSum(self, s: str) -> int:
        con = 0 
        vow = 0
        unique_char = set(s)
        for i in unique_char:
            freq = s.count(i)
            if i in "aiueo":
                vow = max(vow, freq)
            else:
                con = max(con, freq)
        return vow + con

        
        