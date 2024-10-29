#!/usr/bin/env python3
# -*- coding: utf-8 -*-
def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    else:
        pivot = arr[0]  # 选择第一个元素作为基准
        left = [x for x in arr[1:] if x < pivot]
        middle = [x for x in arr if x == pivot]
        right = [x for x in arr[1:] if x > pivot]
        return quick_sort(left) + middle + quick_sort(right)
    
def quick_sortII(arr):
    quick_sort_in_place(arr, 0, len(arr) - 1)

def quick_sort_in_place(arr, low, high):
    if low < high:
        pivot_index = partition(arr, low, high)
        quick_sort_in_place(arr, low, pivot_index - 1)
        quick_sort_in_place(arr, pivot_index + 1, high)

def partition(arr, low, high):
    pivot = arr[high]
    i = low - 1
    for j in range(low, high):
        if arr[j] <= pivot:
            i += 1
            arr[i], arr[j] = arr[j], arr[i]
    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    return i + 1