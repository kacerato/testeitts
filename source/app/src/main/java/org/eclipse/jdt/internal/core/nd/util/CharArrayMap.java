package org.eclipse.jdt.internal.core.nd.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.openjdk.tools.doclint.DocLint;

public final class CharArrayMap<V> {
    static final boolean $assertionsDisabled = false;
    private final Map<Key, V> map;

    public static final class Key implements Comparable<Key> {
        final char[] buffer;
        final int length;
        final int start;

        public Key(char[] cArr, int i10, int i11) {
            this.buffer = cArr;
            this.length = i11;
            this.start = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            if (this.length != key.length) {
                return false;
            }
            int i10 = this.start;
            int i11 = key.start;
            while (i10 < this.length) {
                if (this.buffer[i10] != key.buffer[i11]) {
                    return false;
                }
                i10++;
                i11++;
            }
            return true;
        }

        public int hashCode() {
            int i10 = 17;
            for (int i11 = this.start; i11 < this.start + this.length; i11++) {
                i10 = (i10 * 37) + this.buffer[i11];
            }
            return i10;
        }

        public String toString() {
            return "'" + new String(this.buffer, this.start, this.length) + "'@(" + this.start + DocLint.SEPARATOR + this.length + ")";
        }

        @Override
        public int compareTo(Key key) {
            char[] cArr = this.buffer;
            char[] cArr2 = key.buffer;
            int i10 = this.start;
            for (int i11 = key.start; i10 < cArr.length && i11 < cArr2.length; i11++) {
                char c10 = cArr[i10];
                char c11 = cArr2[i11];
                if (c10 != c11) {
                    return c10 < c11 ? -1 : 1;
                }
                i10++;
            }
            return cArr.length - cArr2.length;
        }

        public Key(char[] cArr) {
            this.buffer = cArr;
            this.length = cArr.length;
            this.start = 0;
        }
    }

    public CharArrayMap() {
        this.map = new HashMap();
    }

    private static void checkBoundaries(char[] cArr, int i10, int i11) {
        if (i10 < 0 || i11 < 0 || i10 >= cArr.length || i10 + i11 > cArr.length) {
            throw new IndexOutOfBoundsException("Buffer length: " + cArr.length + ", Start index: " + i10 + ", Length: " + i11);
        }
    }

    public static <V> CharArrayMap<V> createOrderedMap() {
        return new CharArrayMap<>(new TreeMap());
    }

    public void clear() {
        this.map.clear();
    }

    public boolean containsKey(char[] cArr, int i10, int i11) {
        checkBoundaries(cArr, i10, i11);
        return this.map.containsKey(new Key(cArr, i10, i11));
    }

    public boolean containsValue(V v10) {
        return this.map.containsValue(v10);
    }

    public V get(char[] cArr, int i10, int i11) {
        checkBoundaries(cArr, i10, i11);
        return this.map.get(new Key(cArr, i10, i11));
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public Collection<char[]> keys() {
        Set<Key> o10 = this.map.o();
        ArrayList arrayList = new ArrayList(o10.size());
        for (Key key : o10) {
            arrayList.add(CharArrayUtils.extract(key.buffer, key.start, key.length));
        }
        return arrayList;
    }

    public void put(char[] cArr, int i10, int i11, V v10) {
        checkBoundaries(cArr, i10, i11);
        this.map.put(new Key(cArr, i10, i11), v10);
    }

    public V remove(char[] cArr, int i10, int i11) {
        checkBoundaries(cArr, i10, i11);
        return this.map.remove(new Key(cArr, i10, i11));
    }

    public int size() {
        return this.map.size();
    }

    public String toString() {
        return this.map.toString();
    }

    public Collection<V> values() {
        return this.map.values();
    }

    private CharArrayMap(Map<Key, V> map) {
        this.map = map;
    }

    public boolean containsKey(char[] cArr) {
        return this.map.containsKey(new Key(cArr));
    }

    public V get(char[] cArr) {
        return this.map.get(new Key(cArr));
    }

    public void put(char[] cArr, V v10) {
        this.map.put(new Key(cArr), v10);
    }

    public V remove(char[] cArr) {
        return this.map.remove(new Key(cArr));
    }

    public CharArrayMap(int i10) {
        this.map = new HashMap(i10);
    }
}
