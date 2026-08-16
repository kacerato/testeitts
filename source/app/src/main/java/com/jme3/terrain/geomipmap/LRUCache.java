package com.jme3.terrain.geomipmap;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class LRUCache<K, V> {
    private static final float hashTableLoadFactor = 0.75f;
    private int cacheSize;
    private LinkedHashMap<K, V> map;

    public LRUCache(int i10) {
        this.cacheSize = i10;
        this.map = new LinkedHashMap<K, V>(((int) Math.ceil(i10 / 0.75f)) + 1, 0.75f, true) {
            private static final long serialVersionUID = 1;

            @Override
            public boolean removeEldestEntry(Map.Entry<K, V> entry) {
                return size() > LRUCache.this.cacheSize;
            }
        };
    }

    public synchronized void clear() {
        this.map.clear();
    }

    public synchronized V get(K k10) {
        return this.map.get(k10);
    }

    public synchronized Collection<Map.Entry<K, V>> getAll() {
        return new ArrayList(this.map.entrySet());
    }

    public synchronized void put(K k10, V v10) {
        this.map.put(k10, v10);
    }

    public synchronized int usedEntries() {
        return this.map.size();
    }
}
