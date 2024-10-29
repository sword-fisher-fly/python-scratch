
#!/usr/bin/env python3
from typing import List
# -*- coding: utf-8 -*-

def permutation(nums: List[int]) -> List[List[int]]:
    n = len(nums)
    res = []
    path = [0]*n
    used = [False]*n

    def dfs(depth):
        if depth == n:
            res.append(path[:])
            return

        for i in range(n):
            if not used[i]:
                used[i] = True
                path[depth] = nums[i]
                dfs(depth+1)
                used[i] = False
                
    dfs(0)
    return res

def permutation_with_duplicate(nums: List[int]) -> List[List[int]]:
    n = len(nums)
    res = []
    path = [0]*n
    used = [False]*n

    def dfs(depth):
        if depth == n:
            res.append(path[:])
            return

        for i in range(n):
            if not used[i]:
                # if i > 0 and nums[i] == nums[i-1] and not used[i-1]: //ok
                if i > 0 and nums[i] == nums[i-1] and used[i-1]: ## ok too??
                    continue
                used[i] = True
                path[depth] = nums[i]
                dfs(depth+1)
                used[i] = False

    dfs(0)
    return res

if __name__ == '__main__':
    nums = [1, 2, 3]
    print(permutation(nums))
    
    nums_with_duplicate = [1, 2, 2]
    print(permutation_with_duplicate(nums_with_duplicate))