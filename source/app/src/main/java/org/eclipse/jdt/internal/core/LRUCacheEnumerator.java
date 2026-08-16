package org.eclipse.jdt.internal.core;

import java.util.Enumeration;

public class LRUCacheEnumerator<V> implements Enumeration<V> {
    protected LRUEnumeratorElement<V> elementQueue;

    public static class LRUEnumeratorElement<V> {
        public LRUEnumeratorElement<V> next;
        public V value;

        public LRUEnumeratorElement(V v10) {
            this.value = v10;
        }
    }

    public LRUCacheEnumerator(LRUEnumeratorElement<V> lRUEnumeratorElement) {
        this.elementQueue = lRUEnumeratorElement;
    }

    @Override
    public boolean hasMoreElements() {
        return this.elementQueue != null;
    }

    @Override
    public V nextElement() {
        LRUEnumeratorElement<V> lRUEnumeratorElement = this.elementQueue;
        V v10 = lRUEnumeratorElement.value;
        this.elementQueue = lRUEnumeratorElement.next;
        return v10;
    }
}
