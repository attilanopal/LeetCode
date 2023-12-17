class Solution:
    def containsPattern(self, arr: List[int], m: int, k: int) -> bool:
        patt = []
        for i in range(len(arr) - m * k + 1 ):
            patt = arr[i:i+m]
            if patt * k == arr[i:i + m*k] : return True 
        return False
