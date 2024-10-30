
from typing import List
from itertools import tee, islice

def pairwise(iterable):
    """s -> (s0,s1), (s1,s2), (s2, s3), ..."""
    a, b = tee(iterable)
    b = islice(b, 1, None)  # 跳过第一个元素，与a中的元素对齐
    return zip(a, b)

def longest_consecutive(nums: List[int]) -> int:
    if len(nums) < 2:
        return len(nums)
    ans = 0
    nums.sort()
    cnt = 1
    for a, b in pairwise(nums):
        if a == b:
            continue
        if b - a == 1:
            cnt += 1
        else:
            ans = max(ans, cnt)
            cnt = 1
    return ans

if __name__ == '__main__':
    nums = [100, 4, 200, 1, 3, 2]
    print(longest_consecutive(nums))