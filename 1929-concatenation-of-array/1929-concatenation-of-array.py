class Solution:
    def getConcatenation(self, nums: List[int]) -> List[int]:
        temp = nums
        temp.extend(nums)
        return temp