class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        shor = min(strs)
        res = ''
        con = True
        for index,val in enumerate(shor):
            for lis in strs:
                if (lis[index] != val):
                    con = False
                    break
            if (con):
                res += val
            else:
                break
        return res