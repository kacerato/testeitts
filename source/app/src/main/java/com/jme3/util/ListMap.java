package com.jme3.util;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class ListMap<K, V> extends AbstractMap<K, V> implements Cloneable, Serializable {
    static final boolean $assertionsDisabled = false;
    private final HashMap<K, V> backingMap;
    private ListMapEntry<K, V>[] entries;

    public static final class ListMapEntry<K, V> implements Map.Entry<K, V>, Cloneable {
        private final K key;
        private V value;

        public ListMapEntry(K k10, V v10) {
            this.key = k10;
            this.value = v10;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == null || ListMapEntry.class != obj.getClass()) {
                return false;
            }
            ListMapEntry listMapEntry = (ListMapEntry) obj;
            K k10 = this.key;
            K k11 = listMapEntry.key;
            if (k10 != k11 && (k10 == null || !k10.equals(k11))) {
                return false;
            }
            V v10 = this.value;
            V v11 = listMapEntry.value;
            if (v10 != v11) {
                return v10 != null && v10.equals(v11);
            }
            return true;
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
        public int hashCode() {
            K k10 = this.key;
            int hashCode = k10 != null ? k10.hashCode() : 0;
            V v10 = this.value;
            return hashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override
        public V setValue(V v10) {
            throw new UnsupportedOperationException();
        }

        public ListMapEntry<K, V> m1308clone() {
            return new ListMapEntry<>(this.key, this.value);
        }
    }

    public ListMap() {
        this.entries = new ListMapEntry[4];
        this.backingMap = new HashMap<>(4);
    }

    private static boolean keyEq(Object obj, Object obj2) {
        if (obj.hashCode() == obj2.hashCode()) {
            return obj == obj2 || obj.equals(obj2);
        }
        return false;
    }

    @Override
    public void clear() {
        this.backingMap.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return this.backingMap.containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return this.backingMap.containsValue(obj);
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        return this.backingMap.entrySet();
    }

    @Override
    public V get(Object obj) {
        return this.backingMap.get(obj);
    }

    public Map.Entry<K, V> getEntry(int i10) {
        return this.entries[i10];
    }

    public K getKey(int i10) {
        return (K) ((ListMapEntry) this.entries[i10]).key;
    }

    public V getValue(int i10) {
        return (V) ((ListMapEntry) this.entries[i10]).value;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public Set<K> o() {
        return this.backingMap.o();
    }

    @Override
    public V put(K k10, V v10) {
        int i10 = 0;
        if (this.backingMap.containsKey(k10)) {
            int size = size();
            while (true) {
                if (i10 >= size) {
                    break;
                }
                ListMapEntry<K, V> listMapEntry = this.entries[i10];
                if (keyEq(((ListMapEntry) listMapEntry).key, k10)) {
                    ((ListMapEntry) listMapEntry).value = v10;
                    break;
                }
                i10++;
            }
        } else {
            int size2 = size();
            ListMapEntry<K, V>[] listMapEntryArr = this.entries;
            if (size2 == listMapEntryArr.length) {
                ListMapEntry<K, V>[] listMapEntryArr2 = new ListMapEntry[size2 * 2];
                this.entries = listMapEntryArr2;
                System.arraycopy(listMapEntryArr, 0, listMapEntryArr2, 0, size2);
            }
            this.entries[size2] = new ListMapEntry<>(k10, v10);
        }
        return this.backingMap.put(k10, v10);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public V remove(Object obj) {
        V remove = this.backingMap.remove(obj);
        if (remove != null) {
            int size = size();
            int i10 = size + 1;
            int i11 = 0;
            while (true) {
                if (i11 >= i10) {
                    i11 = -1;
                    break;
                }
                if (keyEq(((ListMapEntry) this.entries[i11]).key, obj)) {
                    break;
                }
                i11++;
            }
            while (i11 < size) {
                ListMapEntry<K, V>[] listMapEntryArr = this.entries;
                int i12 = i11 + 1;
                listMapEntryArr[i11] = listMapEntryArr[i12];
                i11 = i12;
            }
        }
        return remove;
    }

    @Override
    public int size() {
        return this.backingMap.size();
    }

    @Override
    public Collection<V> values() {
        return this.backingMap.values();
    }

    @Override
    public ListMap<K, V> clone() {
        ListMap<K, V> listMap = new ListMap<>(size());
        listMap.putAll(this);
        return listMap;
    }

    public ListMap(int i10) {
        this.entries = new ListMapEntry[i10];
        this.backingMap = new HashMap<>(i10);
    }

    public ListMap(Map<? extends K, ? extends V> map) {
        this.entries = new ListMapEntry[map.size()];
        this.backingMap = new HashMap<>(map.size());
        putAll(map);
    }
}
