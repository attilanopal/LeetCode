class Solution:
    def isPalindrome(self, x: int) -> bool:
        temp = str(x)
        for i in range(len(temp)//2):
            if temp[i] != temp[-(i+1)] or temp[i] == '-':
                return False
        return True
            
            