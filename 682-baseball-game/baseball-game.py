class Solution:
    def calPoints(self, operations: List[str]) -> int:
        skor = []

        for op in operations:
            if op == '+':
                skor.append(skor[-1] + skor[-2])
            elif op == 'D':
                skor.append( 2 * skor[-1])
            elif op == 'C':
                skor.pop()
            else:
                skor.append(int(op))
        
        return sum(skor)