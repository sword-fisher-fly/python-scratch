import pytest

from permutations import permutation, permutation_with_duplicate

def test_permutations():
    assert permutation([1, 2, 3]) == [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
    
def test_permutations_with_duplicate():
    assert permutation_with_duplicate([1, 1, 2]) == [[1, 1, 2], [1, 2, 1], [2, 1, 1]]