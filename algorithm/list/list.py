#!/usr/bin/env python3
# -*- coding: utf-8 -*-
class Node(object):
    def __init__(self, value=None, next=None):
        self.value = value
        self.next = next
        
# This class represents a linked list data structure in Python.
class LinkedList(object):
    def __init__(self):
        self.head = None
        self.length = 0
        
    def __len__(self):
        return self.length
    
    def __str__(self):
        result = [] 
        cur = self.head
        while cur:
            result.append(cur.value)
            cur = cur.next
        print("result: {}".format(result))
        return '->'.join(map(str,result))

    def is_empty(self):
        return self.length == 0

    def append(self, value):
        node = Node(value)
        if self.head is None:
            self.head = node
        else:
            current = self.head
            while current.next is not None:
                current = current.next
            current.next = node
        self.length += 1
    def delete(self, value):
        if self.head is None:
            return
        if self.head.value == value:
            self.head = self.head.next
            self.length -= 1
            return
        current = self.head
        while current.next is not None:
            if current.next.value == value:
                current.next = current.next.next
                self.length -= 1
                return
            current = current.next
    def insert_head(self, value):
        node = Node(value)
        if self.head is None:
            self.head = node
        else:
            node.next = self.head
            self.head = node
        self.length += 1
    def delete_head(self):
        if self.head.next is None:
            self.head = None
        else:
            self.head = self.head.next
        self.length -= 1
    def list_to_array(self):
        arr = list()
        cur = self.head
        while cur is not None:
            arr.append(cur.value)
            cur = cur.next
        return arr
    
