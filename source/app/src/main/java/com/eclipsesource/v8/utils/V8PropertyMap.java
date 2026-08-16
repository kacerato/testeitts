package com.eclipsesource.v8.utils;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;

class V8PropertyMap<V> implements Map<String, V> {
    private Hashtable<String, V> map = new Hashtable<>();
    private Set<String> nulls = new HashSet();

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object put(Object obj, Object obj2) {
        return put((String) obj, (String) obj2);
    }

    @Override
    public int size() {
        return this.map.size() + this.nulls.size();
    }

    @Override
    public boolean isEmpty() {
        return this.map.isEmpty() && this.nulls.isEmpty();
    }

    @Override
    public boolean containsKey(Object key) {
        return this.map.containsKey(key) || this.nulls.contains(key);
    }

    @Override
    public boolean containsValue(Object value) {
        if (value == null && !this.nulls.isEmpty()) {
            return true;
        }
        if (value == null) {
            return false;
        }
        return this.map.containsValue(value);
    }

    @Override
    public V get(Object key) {
        if (this.nulls.contains(key)) {
            return null;
        }
        return this.map.get(key);
    }

    public V put(String key, V value) {
        if (value == null) {
            if (this.map.containsKey(key)) {
                this.map.remove(key);
            }
            this.nulls.add(key);
            return null;
        }
        if (this.nulls.contains(key)) {
            this.nulls.remove(key);
        }
        return this.map.put(key, value);
    }

    @Override
    public V remove(Object key) {
        if (this.nulls.contains(key)) {
            this.nulls.remove(key);
            return null;
        }
        return this.map.remove(key);
    }

    @Override
    public void putAll(Map<? extends String, ? extends V> m10) {
        for (Map.Entry<? extends String, ? extends V> entry : m10.entrySet()) {
            put(entry.getKey(), (String) entry.getValue());
        }
    }

    @Override
    public void clear() {
        this.map.clear();
        this.nulls.clear();
    }

    @Override
    public Set<String> o() {
        HashSet<String> result = new HashSet<>(this.map.o());
        result.addAll(this.nulls);
        return result;
    }

    @Override
    public Collection<V> values() {
        ArrayList<V> result = new ArrayList<>((Collection<? extends V>) this.map.values());
        for (int i10 = 0; i10 < this.nulls.size(); i10++) {
            result.add(null);
        }
        return result;
    }

    @Override
    public Set<Map.Entry<String, V>> entrySet() {
        HashSet<Map.Entry<String, V>> result = new HashSet<>(this.map.entrySet());
        for (String nullKey : this.nulls) {
            result.add(new AbstractMap.SimpleEntry<>(nullKey, null));
        }
        return result;
    }
}
