import pytest

from quicksort import quick_sort 
from quicksort import quick_sortII

def test_quick_sort():
    arr = [3, 6, 8, 10, 1, 2, 1]
    sorted_arr = quick_sort(arr)
    assert sorted_arr == [1, 1, 2, 3, 6, 8, 10]
    
def test_quick_sortII():
    arr = [3, 6, 8, 10, 1, 2, 1]
    quick_sortII(arr)
    assert arr == [1, 1, 2, 3, 6, 8, 10]