#! /usr/bin/env python3
import heapq
from typing import List, Dict

class Solution(object):
    def k_smallest_pair(self, nums1: List[int], nums2: List[int], k: int) -> List[List[int]]:
        hp = []
        for i in range(len(nums1)):
            for j in range(len(nums2)):
                heapq.heappush(hp, (-nums1[i] - nums2[j], [nums1[i], nums2[j]]))
                if len(hp) > k:
                    heapq.heappop(hp)
                        
        return [p for _, p in hp]     
    
if __name__ == '__main__':
    s = Solution()
    nums1 = [1, 7, 11]
    nums2 = [2, 4, 6]
    k = 3
    print(s.k_smallest_pair(nums1, nums2, k))