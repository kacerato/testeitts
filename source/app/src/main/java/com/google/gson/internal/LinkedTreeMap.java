package com.google.gson.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    private static final Comparator<Comparable> NATURAL_ORDER;
    Comparator<? super K> comparator;
    Node<K, V> root;
    int size;
    int modCount;
    final Node<K, V> header;
    private LinkedTreeMap<K, V>.EntrySet entrySet;
    private LinkedTreeMap<K, V>.KeySet keySet;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !LinkedTreeMap.class.desiredAssertionStatus();
        NATURAL_ORDER = new Comparator<Comparable>() {
            @Override
            public int compare(Comparable a10, Comparable b10) {
                return a10.compareTo(b10);
            }
        };
    }

    public LinkedTreeMap() {
        this(NATURAL_ORDER);
    }

    public LinkedTreeMap(Comparator<? super K> comparator) {
        Comparator<? super K> comparator2;
        this.size = 0;
        this.modCount = 0;
        this.header = new Node<>();
        if (comparator != null) {
            comparator2 = comparator;
        } else {
            comparator2 = NATURAL_ORDER;
        }
        this.comparator = comparator2;
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public V get(Object key) {
        Node<K, V> node = findByObject(key);
        if (node != null) {
            return node.value;
        }
        return null;
    }

    @Override
    public boolean containsKey(Object key) {
        return findByObject(key) != null;
    }

    @Override
    public V put(K key, V value) {
        if (key == null) {
            throw new NullPointerException("key == null");
        }
        Node<K, V> created = find(key, true);
        V result = created.value;
        created.value = value;
        return result;
    }

    @Override
    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        Node<K, V> header = this.header;
        header.prev = header;
        header.next = header;
    }

    @Override
    public V remove(Object key) {
        Node<K, V> node = removeInternalByKey(key);
        if (node != null) {
            return node.value;
        }
        return null;
    }

    Node<K, V> find(K k10, boolean z10) {
        Node<K, V> node;
        Comparable<Object> comparable;
        int compare;
        Comparator<? super K> comparator = this.comparator;
        Node<K, V> node2 = this.root;
        int i10 = 0;
        if (node2 != null) {
            if (comparator == NATURAL_ORDER) {
                comparable = (Comparable) k10;
            } else {
                comparable = null;
            }
            Comparable<Object> comparable2 = comparable;
            while (true) {
                if (comparable2 != null) {
                    compare = comparable2.compareTo(node2.key);
                } else {
                    compare = comparator.compare(k10, node2.key);
                }
                i10 = compare;
                if (i10 == 0) {
                    return node2;
                }
                Node<K, V> node3 = i10 < 0 ? node2.left : node2.right;
                if (node3 == null) {
                    break;
                }
                node2 = node3;
            }
        }
        if (!z10) {
            return null;
        }
        Node<K, V> node4 = this.header;
        if (node2 == null) {
            if (comparator == NATURAL_ORDER && !(k10 instanceof Comparable)) {
                throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
            }
            node = new Node<>(node2, k10, node4, node4.prev);
            this.root = node;
        } else {
            node = new Node<>(node2, k10, node4, node4.prev);
            if (i10 < 0) {
                node2.left = node;
            } else {
                node2.right = node;
            }
            rebalance(node2, true);
        }
        this.size++;
        this.modCount++;
        return node;
    }

    /* JADX WARN: Multi-variable type inference failed */
    Node<K, V> findByObject(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return find(obj, false);
        } catch (ClassCastException e10) {
            return null;
        }
    }

    Node<K, V> findByEntry(Map.Entry<?, ?> entry) {
        Node<K, V> mine = findByObject(entry.getKey());
        boolean valuesEqual = mine != null && equal(mine.value, entry.getValue());
        if (valuesEqual) {
            return mine;
        }
        return null;
    }

    private boolean equal(Object a10, Object b10) {
        return a10 == b10 || (a10 != null && a10.equals(b10));
    }

    void removeInternal(Node<K, V> node, boolean unlink) {
        if (unlink) {
            node.prev.next = node.next;
            node.next.prev = node.prev;
        }
        Node<K, V> left = node.left;
        Node<K, V> right = node.right;
        Node<K, V> originalParent = node.parent;
        if (left != null && right != null) {
            Node<K, V> adjacent = left.height > right.height ? left.last() : right.first();
            removeInternal(adjacent, false);
            int leftHeight = 0;
            Node<K, V> left2 = node.left;
            if (left2 != null) {
                leftHeight = left2.height;
                adjacent.left = left2;
                left2.parent = adjacent;
                node.left = null;
            }
            int rightHeight = 0;
            Node<K, V> right2 = node.right;
            if (right2 != null) {
                rightHeight = right2.height;
                adjacent.right = right2;
                right2.parent = adjacent;
                node.right = null;
            }
            adjacent.height = Math.max(leftHeight, rightHeight) + 1;
            replaceInParent(node, adjacent);
            return;
        }
        if (left != null) {
            replaceInParent(node, left);
            node.left = null;
        } else if (right != null) {
            replaceInParent(node, right);
            node.right = null;
        } else {
            replaceInParent(node, null);
        }
        rebalance(originalParent, false);
        this.size--;
        this.modCount++;
    }

    Node<K, V> removeInternalByKey(Object key) {
        Node<K, V> node = findByObject(key);
        if (node != null) {
            removeInternal(node, true);
        }
        return node;
    }

    private void replaceInParent(Node<K, V> node, Node<K, V> replacement) {
        Node<K, V> parent = node.parent;
        node.parent = null;
        if (replacement != null) {
            replacement.parent = parent;
        }
        if (parent != null) {
            if (parent.left == node) {
                parent.left = replacement;
                return;
            } else {
                if (!$assertionsDisabled && parent.right != node) {
                    throw new AssertionError();
                }
                parent.right = replacement;
                return;
            }
        }
        this.root = replacement;
    }

    private void rebalance(Node<K, V> unbalanced, boolean insert) {
        Node<K, V> node = unbalanced;
        while (true) {
            Node<K, V> node2 = node;
            if (node2 != null) {
                Node<K, V> left = node2.left;
                Node<K, V> right = node2.right;
                int leftHeight = left != null ? left.height : 0;
                int rightHeight = right != null ? right.height : 0;
                int delta = leftHeight - rightHeight;
                if (delta == -2) {
                    Node<K, V> rightLeft = right.left;
                    Node<K, V> rightRight = right.right;
                    int rightRightHeight = rightRight != null ? rightRight.height : 0;
                    int rightLeftHeight = rightLeft != null ? rightLeft.height : 0;
                    int rightDelta = rightLeftHeight - rightRightHeight;
                    if (rightDelta == -1 || (rightDelta == 0 && !insert)) {
                        rotateLeft(node2);
                    } else {
                        if (!$assertionsDisabled && rightDelta != 1) {
                            throw new AssertionError();
                        }
                        rotateRight(right);
                        rotateLeft(node2);
                    }
                    if (insert) {
                        return;
                    }
                } else if (delta == 2) {
                    Node<K, V> leftLeft = left.left;
                    Node<K, V> leftRight = left.right;
                    int leftRightHeight = leftRight != null ? leftRight.height : 0;
                    int leftLeftHeight = leftLeft != null ? leftLeft.height : 0;
                    int leftDelta = leftLeftHeight - leftRightHeight;
                    if (leftDelta == 1 || (leftDelta == 0 && !insert)) {
                        rotateRight(node2);
                    } else {
                        if (!$assertionsDisabled && leftDelta != -1) {
                            throw new AssertionError();
                        }
                        rotateLeft(left);
                        rotateRight(node2);
                    }
                    if (insert) {
                        return;
                    }
                } else if (delta == 0) {
                    node2.height = leftHeight + 1;
                    if (insert) {
                        return;
                    }
                } else {
                    if (!$assertionsDisabled && delta != -1 && delta != 1) {
                        throw new AssertionError();
                    }
                    node2.height = Math.max(leftHeight, rightHeight) + 1;
                    if (!insert) {
                        return;
                    }
                }
                node = node2.parent;
            } else {
                return;
            }
        }
    }

    private void rotateLeft(Node<K, V> root) {
        Node<K, V> left = root.left;
        Node<K, V> pivot = root.right;
        Node<K, V> pivotLeft = pivot.left;
        Node<K, V> pivotRight = pivot.right;
        root.right = pivotLeft;
        if (pivotLeft != null) {
            pivotLeft.parent = root;
        }
        replaceInParent(root, pivot);
        pivot.left = root;
        root.parent = pivot;
        root.height = Math.max(left != null ? left.height : 0, pivotLeft != null ? pivotLeft.height : 0) + 1;
        pivot.height = Math.max(root.height, pivotRight != null ? pivotRight.height : 0) + 1;
    }

    private void rotateRight(Node<K, V> root) {
        Node<K, V> pivot = root.left;
        Node<K, V> right = root.right;
        Node<K, V> pivotLeft = pivot.left;
        Node<K, V> pivotRight = pivot.right;
        root.left = pivotRight;
        if (pivotRight != null) {
            pivotRight.parent = root;
        }
        replaceInParent(root, pivot);
        pivot.right = root;
        root.parent = pivot;
        root.height = Math.max(right != null ? right.height : 0, pivotRight != null ? pivotRight.height : 0) + 1;
        pivot.height = Math.max(root.height, pivotLeft != null ? pivotLeft.height : 0) + 1;
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedTreeMap<K, V>.EntrySet result = this.entrySet;
        if (result != null) {
            return result;
        }
        LinkedTreeMap<K, V>.EntrySet entrySet = new EntrySet();
        this.entrySet = entrySet;
        return entrySet;
    }

    @Override
    public Set<K> o() {
        LinkedTreeMap<K, V>.KeySet result = this.keySet;
        if (result != null) {
            return result;
        }
        LinkedTreeMap<K, V>.KeySet keySet = new KeySet();
        this.keySet = keySet;
        return keySet;
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    public static final class Node<K, V> implements Map.Entry<K, V> {
        Node<K, V> parent;
        Node<K, V> left;
        Node<K, V> right;
        Node<K, V> next;
        Node<K, V> prev;
        final K key;
        V value;
        int height;

        Node() {
            this.key = null;
            this.prev = this;
            this.next = this;
        }

        Node(Node<K, V> parent, K key, Node<K, V> next, Node<K, V> prev) {
            this.parent = parent;
            this.key = key;
            this.height = 1;
            this.next = next;
            this.prev = prev;
            prev.next = this;
            next.prev = this;
        }

        @Override
        public K getKey() {
            return this.key;
        }

        @Override
        public V getValue() {
            return this.value;
        }

        @Override
        public V setValue(V value) {
            V oldValue = this.value;
            this.value = value;
            return oldValue;
        }

        @Override
        public boolean equals(Object o10) {
            if (o10 instanceof Map.Entry) {
                Map.Entry other = (Map.Entry) o10;
                if (this.key != null ? this.key.equals(other.getKey()) : other.getKey() == null) {
                    if (this.value != null ? this.value.equals(other.getValue()) : other.getValue() == null) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        @Override
        public int hashCode() {
            return (this.key == null ? 0 : this.key.hashCode()) ^ (this.value == null ? 0 : this.value.hashCode());
        }

        public String toString() {
            return ((Object) this.key) + "=" + ((Object) this.value);
        }

        public Node<K, V> first() {
            Node<K, V> node = this;
            Node<K, V> node2 = node.left;
            while (true) {
                Node<K, V> child = node2;
                if (child != null) {
                    node = child;
                    node2 = node.left;
                } else {
                    return node;
                }
            }
        }

        public Node<K, V> last() {
            Node<K, V> node = this;
            Node<K, V> node2 = node.right;
            while (true) {
                Node<K, V> child = node2;
                if (child != null) {
                    node = child;
                    node2 = node.right;
                } else {
                    return node;
                }
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    public abstract class LinkedTreeMapIterator<T> implements Iterator<T> {
        Node<K, V> next;
        Node<K, V> lastReturned = null;
        int expectedModCount;

        LinkedTreeMapIterator() {
            this.next = LinkedTreeMap.this.header.next;
            this.expectedModCount = LinkedTreeMap.this.modCount;
        }

        @Override
        public final boolean hasNext() {
            return this.next != LinkedTreeMap.this.header;
        }

        final Node<K, V> nextNode() {
            Node<K, V> e10 = this.next;
            if (e10 == LinkedTreeMap.this.header) {
                throw new NoSuchElementException();
            }
            if (LinkedTreeMap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
            this.next = e10.next;
            this.lastReturned = e10;
            return e10;
        }

        @Override
        public final void remove() {
            if (this.lastReturned == null) {
                throw new IllegalStateException();
            }
            LinkedTreeMap.this.removeInternal(this.lastReturned, true);
            this.lastReturned = null;
            this.expectedModCount = LinkedTreeMap.this.modCount;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        EntrySet() {
        }

        @Override
        public int size() {
            return LinkedTreeMap.this.size;
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return new LinkedTreeMap<K, V>.LinkedTreeMapIterator<Map.Entry<K, V>>() {
                {
                    LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
                }

                @Override
                public Map.Entry<K, V> next() {
                    return nextNode();
                }
            };
        }

        @Override
        public boolean contains(Object o10) {
            return (o10 instanceof Map.Entry) && LinkedTreeMap.this.findByEntry((Map.Entry) o10) != null;
        }

        @Override
        public boolean remove(Object o10) {
            Node<K, V> node;
            if (!(o10 instanceof Map.Entry) || (node = LinkedTreeMap.this.findByEntry((Map.Entry) o10)) == null) {
                return false;
            }
            LinkedTreeMap.this.removeInternal(node, true);
            return true;
        }

        @Override
        public void clear() {
            LinkedTreeMap.this.clear();
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    final class KeySet extends AbstractSet<K> {
        KeySet() {
        }

        @Override
        public int size() {
            return LinkedTreeMap.this.size;
        }

        @Override
        public Iterator<K> iterator() {
            return new LinkedTreeMap<K, V>.LinkedTreeMapIterator<K>() {
                {
                    LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
                }

                @Override
                public K next() {
                    return nextNode().key;
                }
            };
        }

        @Override
        public boolean contains(Object o10) {
            return LinkedTreeMap.this.containsKey(o10);
        }

        @Override
        public boolean remove(Object key) {
            return LinkedTreeMap.this.removeInternalByKey(key) != null;
        }

        @Override
        public void clear() {
            LinkedTreeMap.this.clear();
        }
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }
}
