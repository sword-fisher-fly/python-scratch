import pytest
from list import LinkedList

def test_append():
    ll = LinkedList()
    ll.append(1)
    ll.append(2)
    ll.append(3)
    assert str(ll) == "1->2->3"

def test_delete():
    ll = LinkedList()
    ll.append(1)
    ll.append(2)
    ll.append(3)
    ll.delete(2)
    assert str(ll) == "1->3"
#
#def test_update():
#    ll = LinkedList()
#    ll.append(1)
#    ll.append(2)
#    ll.append(3)
#    ll.update(2, 4)
#    assert str(ll) == "1->4->3"

