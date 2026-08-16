package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.Releasable;
import com.eclipsesource.v8.V8Value;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class V8Map<V> implements Map<V8Value, V>, Releasable {
    private Map<V8Value, V> map = new HashMap();
    private Map<V8Value, V8Value> twinMap = new HashMap();

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object put(Object obj, Object obj2) {
        return put((V8Value) obj, (V8Value) obj2);
    }

    @Override
    public void release() {
        clear();
    }

    @Override
    public int size() {
        return this.map.size();
    }

    @Override
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override
    public boolean containsKey(Object key) {
        return this.map.containsKey(key);
    }

    @Override
    public boolean containsValue(Object value) {
        return this.map.containsValue(value);
    }

    @Override
    public V get(Object key) {
        return this.map.get(key);
    }

    public V put(V8Value key, V value) {
        remove(key);
        V8Value twin = key.twin();
        this.twinMap.put(twin, twin);
        return this.map.put(twin, value);
    }

    @Override
    public V remove(Object key) {
        V result = this.map.remove(key);
        V8Value twin = this.twinMap.remove(key);
        if (twin != null) {
            twin.release();
        }
        return result;
    }

    @Override
    public void putAll(Map<? extends V8Value, ? extends V> m10) {
        for (Map.Entry<? extends V8Value, ? extends V> entry : m10.entrySet()) {
            put(entry.getKey(), (V8Value) entry.getValue());
        }
    }

    @Override
    public void clear() {
        this.map.clear();
        for (V8Value V8Value : this.twinMap.o()) {
            V8Value.release();
        }
        this.twinMap.clear();
    }

    @Override
    public Set<V8Value> o() {
        return this.map.o();
    }

    @Override
    public Collection<V> values() {
        return this.map.values();
    }

    @Override
    public Set<Map.Entry<V8Value, V>> entrySet() {
        return this.map.entrySet();
    }
}
