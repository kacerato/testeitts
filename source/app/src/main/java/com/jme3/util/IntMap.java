package com.jme3.util;

import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class IntMap<T> implements Iterable<Entry<T>>, Cloneable, JmeCloneable {
    private int capacity;
    private final float loadFactor;
    private int mask;
    private int size;
    private Entry[] table;
    private int threshold;

    public static final class Entry<T> implements Cloneable, JmeCloneable {
        final int key;
        Entry next;
        T value;

        public Entry(int i10, T t10, Entry entry) {
            this.key = i10;
            this.value = t10;
            this.next = entry;
        }

        @Override
        public void cloneFields(Cloner cloner, Object obj) {
            this.value = (T) cloner.clone(this.value);
            this.next = (Entry) cloner.clone(this.next);
        }

        public int getKey() {
            return this.key;
        }

        public T getValue() {
            return this.value;
        }

        @Override
        public Object jmeClone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException unused) {
                throw new AssertionError();
            }
        }

        public String toString() {
            return this.key + " => " + ((Object) this.value);
        }

        public Entry<T> m1307clone() {
            try {
                Entry<T> entry = (Entry) super.clone();
                Entry entry2 = this.next;
                entry.next = entry2 != null ? entry2.m1307clone() : null;
                return entry;
            } catch (CloneNotSupportedException unused) {
                return null;
            }
        }
    }

    public final class IntMapIterator implements Iterator<Entry<T>> {
        private Entry cur;
        private int idx = 0;

        private int f81655el = 0;

        public IntMapIterator() {
        }

        public void beginUse() {
            this.cur = IntMap.this.table[0];
            this.idx = 0;
            this.f81655el = 0;
        }

        @Override
        public boolean hasNext() {
            return this.f81655el < IntMap.this.size;
        }

        @Override
        public void remove() {
        }

        @Override
        public Entry next() {
            Entry entry;
            if (this.f81655el < IntMap.this.size) {
                Entry entry2 = this.cur;
                if (entry2 != null) {
                    this.cur = entry2.next;
                    this.f81655el++;
                    return entry2;
                }
                do {
                    Entry[] entryArr = IntMap.this.table;
                    int i10 = this.idx + 1;
                    this.idx = i10;
                    entry = entryArr[i10];
                    this.cur = entry;
                } while (entry == null);
                this.cur = entry.next;
                this.f81655el++;
                return entry;
            }
            throw new NoSuchElementException("No more elements!");
        }
    }

    public IntMap() {
        this(16, 0.75f);
    }

    public void clear() {
        Entry[] entryArr = this.table;
        int length = entryArr.length;
        while (true) {
            length--;
            if (length < 0) {
                this.size = 0;
                return;
            }
            entryArr[length] = null;
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.table = (Entry[]) cloner.clone(this.table);
    }

    public boolean containsKey(int i10) {
        for (Entry entry = this.table[this.mask & i10]; entry != null; entry = entry.next) {
            if (entry.key == i10) {
                return true;
            }
        }
        return false;
    }

    public boolean containsValue(Object obj) {
        Entry[] entryArr = this.table;
        int length = entryArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            for (Entry entry = entryArr[i10]; entry != null; entry = entry.next) {
                if (entry.value.equals(obj)) {
                    return true;
                }
            }
            length = i10;
        }
    }

    public T get(int i10) {
        for (Entry entry = this.table[this.mask & i10]; entry != null; entry = entry.next) {
            if (entry.key == i10) {
                return entry.value;
            }
        }
        return null;
    }

    @Override
    public Iterator<Entry<T>> iterator() {
        IntMapIterator intMapIterator = new IntMapIterator();
        intMapIterator.beginUse();
        return intMapIterator;
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public T put(int i10, T t10) {
        int i11 = this.mask & i10;
        for (Entry entry = this.table[i11]; entry != null; entry = entry.next) {
            if (entry.key == i10) {
                T t11 = entry.value;
                entry.value = t10;
                return t11;
            }
        }
        Entry[] entryArr = this.table;
        entryArr[i11] = new Entry(i10, t10, entryArr[i11]);
        int i12 = this.size;
        this.size = i12 + 1;
        if (i12 >= this.threshold) {
            int i13 = this.capacity * 2;
            Entry[] entryArr2 = new Entry[i13];
            Entry[] entryArr3 = this.table;
            int i14 = i13 - 1;
            for (int i15 = 0; i15 < entryArr3.length; i15++) {
                Entry entry2 = entryArr3[i15];
                if (entry2 != null) {
                    entryArr3[i15] = null;
                    while (true) {
                        Entry entry3 = entry2.next;
                        int i16 = entry2.key & i14;
                        entry2.next = entryArr2[i16];
                        entryArr2[i16] = entry2;
                        if (entry3 == null) {
                            break;
                        }
                        entry2 = entry3;
                    }
                }
            }
            this.table = entryArr2;
            this.capacity = i13;
            this.threshold = (int) (i13 * this.loadFactor);
            this.mask = i13 - 1;
        }
        return null;
    }

    public T remove(int i10) {
        int i11 = this.mask & i10;
        Entry entry = this.table[i11];
        Entry entry2 = entry;
        while (entry != null) {
            Entry entry3 = entry.next;
            if (entry.key == i10) {
                this.size--;
                if (entry2 == entry) {
                    this.table[i11] = entry3;
                } else {
                    entry2.next = entry3;
                }
                return entry.value;
            }
            entry2 = entry;
            entry = entry3;
        }
        return null;
    }

    public int size() {
        return this.size;
    }

    public IntMap(int i10) {
        this(i10, 0.75f);
    }

    public IntMap<T> m1306clone() {
        try {
            IntMap<T> intMap = (IntMap) super.clone();
            Entry[] entryArr = this.table;
            Entry[] entryArr2 = new Entry[entryArr.length];
            for (int length = entryArr.length - 1; length >= 0; length--) {
                Entry entry = this.table[length];
                if (entry != null) {
                    entryArr2[length] = entry.m1307clone();
                }
            }
            intMap.table = entryArr2;
            return intMap;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public IntMap(int i10, float f10) {
        if (i10 > 1073741824) {
            throw new IllegalArgumentException("initialCapacity is too large.");
        }
        if (i10 <= 0) {
            throw new IllegalArgumentException("initialCapacity must be greater than zero.");
        }
        if (f10 > 0.0f) {
            this.capacity = 1;
            while (true) {
                int i11 = this.capacity;
                if (i11 < i10) {
                    this.capacity = i11 << 1;
                } else {
                    this.loadFactor = f10;
                    this.threshold = (int) (i11 * f10);
                    this.table = new Entry[i11];
                    this.mask = i11 - 1;
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("loadFactor must be greater than zero.");
        }
    }
}
