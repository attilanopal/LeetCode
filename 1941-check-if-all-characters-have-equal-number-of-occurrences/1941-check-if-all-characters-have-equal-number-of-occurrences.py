class Solution:
    def areOccurrencesEqual(self, s: str) -> bool:
        hur = set(s)
        tem = []
        for i in hur:
            tem.append(s.count(i))
        if len(set(tem)) == 1: return True
        else : return False 
                
