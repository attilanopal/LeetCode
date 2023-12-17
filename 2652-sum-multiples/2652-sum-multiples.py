class Solution:
    def sumOfMultiples(self, n: int) -> int:
        sum = 0
        for i in range(1,n+1):
            sum += i if (i % 3 == 0) or (i % 5 == 0) or (i % 7 == 0) else 0 
        return sum