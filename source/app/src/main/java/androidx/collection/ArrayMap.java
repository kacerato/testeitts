package androidx.collection;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    MapCollections<K, V> mCollections;

    public ArrayMap() {
    }

    private MapCollections<K, V> getCollection() {
        if (this.mCollections == null) {
            this.mCollections = new MapCollections<K, V>() {
                @Override
                public void colClear() {
                    ArrayMap.this.clear();
                }

                @Override
                public Object colGetEntry(int i10, int i11) {
                    return ArrayMap.this.mArray[(i10 << 1) + i11];
                }

                @Override
                public Map<K, V> colGetMap() {
                    return ArrayMap.this;
                }

                @Override
                public int colGetSize() {
                    return ArrayMap.this.mSize;
                }

                @Override
                public int colIndexOfKey(Object obj) {
                    return ArrayMap.this.indexOfKey(obj);
                }

                @Override
                public int colIndexOfValue(Object obj) {
                    return ArrayMap.this.indexOfValue(obj);
                }

                @Override
                public void colPut(K k10, V v10) {
                    ArrayMap.this.put(k10, v10);
                }

                @Override
                public void colRemoveAt(int i10) {
                    ArrayMap.this.removeAt(i10);
                }

                @Override
                public V colSetValue(int i10, V v10) {
                    return ArrayMap.this.setValueAt(i10, v10);
                }
            };
        }
        return this.mCollections;
    }

    public boolean containsAll(Collection<?> collection) {
        return MapCollections.containsAllHelper(this, collection);
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        return getCollection().getEntrySet();
    }

    @Override
    public Set<K> o() {
        return getCollection().getKeySet();
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.mSize + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(Collection<?> collection) {
        return MapCollections.removeAllHelper(this, collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return MapCollections.retainAllHelper(this, collection);
    }

    @Override
    public Collection<V> values() {
        return getCollection().getValues();
    }

    public ArrayMap(int i10) {
        super(i10);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }
}
