package androidx.collection;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public abstract class MapCollections<K, V> {
    MapCollections<K, V>.EntrySet mEntrySet;
    MapCollections<K, V>.KeySet mKeySet;
    MapCollections<K, V>.ValuesCollection mValues;

    public final class ArrayIterator<T> implements Iterator<T> {
        boolean mCanRemove = false;
        int mIndex;
        final int mOffset;
        int mSize;

        public ArrayIterator(int i10) {
            this.mOffset = i10;
            this.mSize = MapCollections.this.colGetSize();
        }

        @Override
        public boolean hasNext() {
            return this.mIndex < this.mSize;
        }

        @Override
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t10 = (T) MapCollections.this.colGetEntry(this.mIndex, this.mOffset);
            this.mIndex++;
            this.mCanRemove = true;
            return t10;
        }

        @Override
        public void remove() {
            if (!this.mCanRemove) {
                throw new IllegalStateException();
            }
            int i10 = this.mIndex - 1;
            this.mIndex = i10;
            this.mSize--;
            this.mCanRemove = false;
            MapCollections.this.colRemoveAt(i10);
        }
    }

    public final class EntrySet implements Set<Map.Entry<K, V>> {
        public EntrySet() {
        }

        @Override
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int colGetSize = MapCollections.this.colGetSize();
            for (Map.Entry<K, V> entry : collection) {
                MapCollections.this.colPut(entry.getKey(), entry.getValue());
            }
            return colGetSize != MapCollections.this.colGetSize();
        }

        @Override
        public void clear() {
            MapCollections.this.colClear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int colIndexOfKey = MapCollections.this.colIndexOfKey(entry.getKey());
            if (colIndexOfKey < 0) {
                return false;
            }
            return ContainerHelpers.equal(MapCollections.this.colGetEntry(colIndexOfKey, 1), entry.getValue());
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            return MapCollections.equalsSetHelper(this, obj);
        }

        @Override
        public int hashCode() {
            int i10 = 0;
            for (int colGetSize = MapCollections.this.colGetSize() - 1; colGetSize >= 0; colGetSize--) {
                Object colGetEntry = MapCollections.this.colGetEntry(colGetSize, 0);
                Object colGetEntry2 = MapCollections.this.colGetEntry(colGetSize, 1);
                i10 += (colGetEntry == null ? 0 : colGetEntry.hashCode()) ^ (colGetEntry2 == null ? 0 : colGetEntry2.hashCode());
            }
            return i10;
        }

        @Override
        public boolean isEmpty() {
            return MapCollections.this.colGetSize() == 0;
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return new MapIterator();
        }

        @Override
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return MapCollections.this.colGetSize();
        }

        @Override
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    public final class KeySet implements Set<K> {
        public KeySet() {
        }

        @Override
        public boolean add(K k10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            MapCollections.this.colClear();
        }

        @Override
        public boolean contains(Object obj) {
            return MapCollections.this.colIndexOfKey(obj) >= 0;
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            return MapCollections.containsAllHelper(MapCollections.this.colGetMap(), collection);
        }

        @Override
        public boolean equals(Object obj) {
            return MapCollections.equalsSetHelper(this, obj);
        }

        @Override
        public int hashCode() {
            int i10 = 0;
            for (int colGetSize = MapCollections.this.colGetSize() - 1; colGetSize >= 0; colGetSize--) {
                Object colGetEntry = MapCollections.this.colGetEntry(colGetSize, 0);
                i10 += colGetEntry == null ? 0 : colGetEntry.hashCode();
            }
            return i10;
        }

        @Override
        public boolean isEmpty() {
            return MapCollections.this.colGetSize() == 0;
        }

        @Override
        public Iterator<K> iterator() {
            return new ArrayIterator(0);
        }

        @Override
        public boolean remove(Object obj) {
            int colIndexOfKey = MapCollections.this.colIndexOfKey(obj);
            if (colIndexOfKey < 0) {
                return false;
            }
            MapCollections.this.colRemoveAt(colIndexOfKey);
            return true;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            return MapCollections.removeAllHelper(MapCollections.this.colGetMap(), collection);
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            return MapCollections.retainAllHelper(MapCollections.this.colGetMap(), collection);
        }

        @Override
        public int size() {
            return MapCollections.this.colGetSize();
        }

        @Override
        public Object[] toArray() {
            return MapCollections.this.toArrayHelper(0);
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapCollections.this.toArrayHelper(tArr, 0);
        }
    }

    public final class MapIterator implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
        int mEnd;
        boolean mEntryValid = false;
        int mIndex = -1;

        public MapIterator() {
            this.mEnd = MapCollections.this.colGetSize() - 1;
        }

        @Override
        public boolean equals(Object obj) {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return ContainerHelpers.equal(entry.getKey(), MapCollections.this.colGetEntry(this.mIndex, 0)) && ContainerHelpers.equal(entry.getValue(), MapCollections.this.colGetEntry(this.mIndex, 1));
        }

        @Override
        public K getKey() {
            if (this.mEntryValid) {
                return (K) MapCollections.this.colGetEntry(this.mIndex, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override
        public V getValue() {
            if (this.mEntryValid) {
                return (V) MapCollections.this.colGetEntry(this.mIndex, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override
        public boolean hasNext() {
            return this.mIndex < this.mEnd;
        }

        @Override
        public int hashCode() {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object colGetEntry = MapCollections.this.colGetEntry(this.mIndex, 0);
            Object colGetEntry2 = MapCollections.this.colGetEntry(this.mIndex, 1);
            return (colGetEntry == null ? 0 : colGetEntry.hashCode()) ^ (colGetEntry2 != null ? colGetEntry2.hashCode() : 0);
        }

        @Override
        public void remove() {
            if (!this.mEntryValid) {
                throw new IllegalStateException();
            }
            MapCollections.this.colRemoveAt(this.mIndex);
            this.mIndex--;
            this.mEnd--;
            this.mEntryValid = false;
        }

        @Override
        public V setValue(V v10) {
            if (this.mEntryValid) {
                return (V) MapCollections.this.colSetValue(this.mIndex, v10);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }

        @Override
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                this.mIndex++;
                this.mEntryValid = true;
                return this;
            }
            throw new NoSuchElementException();
        }
    }

    public final class ValuesCollection implements Collection<V> {
        public ValuesCollection() {
        }

        @Override
        public boolean add(V v10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            MapCollections.this.colClear();
        }

        @Override
        public boolean contains(Object obj) {
            return MapCollections.this.colIndexOfValue(obj) >= 0;
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean isEmpty() {
            return MapCollections.this.colGetSize() == 0;
        }

        @Override
        public Iterator<V> iterator() {
            return new ArrayIterator(1);
        }

        @Override
        public boolean remove(Object obj) {
            int colIndexOfValue = MapCollections.this.colIndexOfValue(obj);
            if (colIndexOfValue < 0) {
                return false;
            }
            MapCollections.this.colRemoveAt(colIndexOfValue);
            return true;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            int colGetSize = MapCollections.this.colGetSize();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < colGetSize) {
                if (collection.contains(MapCollections.this.colGetEntry(i10, 1))) {
                    MapCollections.this.colRemoveAt(i10);
                    i10--;
                    colGetSize--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            int colGetSize = MapCollections.this.colGetSize();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < colGetSize) {
                if (!collection.contains(MapCollections.this.colGetEntry(i10, 1))) {
                    MapCollections.this.colRemoveAt(i10);
                    i10--;
                    colGetSize--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override
        public int size() {
            return MapCollections.this.colGetSize();
        }

        @Override
        public Object[] toArray() {
            return MapCollections.this.toArrayHelper(1);
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapCollections.this.toArrayHelper(tArr, 1);
        }
    }

    public static <K, V> boolean containsAllHelper(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean equalsSetHelper(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <K, V> boolean removeAllHelper(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean retainAllHelper(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.o().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public abstract void colClear();

    public abstract Object colGetEntry(int i10, int i11);

    public abstract Map<K, V> colGetMap();

    public abstract int colGetSize();

    public abstract int colIndexOfKey(Object obj);

    public abstract int colIndexOfValue(Object obj);

    public abstract void colPut(K k10, V v10);

    public abstract void colRemoveAt(int i10);

    public abstract V colSetValue(int i10, V v10);

    public Set<Map.Entry<K, V>> getEntrySet() {
        if (this.mEntrySet == null) {
            this.mEntrySet = new EntrySet();
        }
        return this.mEntrySet;
    }

    public Set<K> getKeySet() {
        if (this.mKeySet == null) {
            this.mKeySet = new KeySet();
        }
        return this.mKeySet;
    }

    public Collection<V> getValues() {
        if (this.mValues == null) {
            this.mValues = new ValuesCollection();
        }
        return this.mValues;
    }

    public Object[] toArrayHelper(int i10) {
        int colGetSize = colGetSize();
        Object[] objArr = new Object[colGetSize];
        for (int i11 = 0; i11 < colGetSize; i11++) {
            objArr[i11] = colGetEntry(i11, i10);
        }
        return objArr;
    }

    public <T> T[] toArrayHelper(T[] tArr, int i10) {
        int colGetSize = colGetSize();
        if (tArr.length < colGetSize) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), colGetSize));
        }
        for (int i11 = 0; i11 < colGetSize; i11++) {
            tArr[i11] = colGetEntry(i11, i10);
        }
        if (tArr.length > colGetSize) {
            tArr[colGetSize] = null;
        }
        return tArr;
    }
}
