package com.github.javaparser.resolution.cache;

import java.util.Optional;

public interface Cache<K, V> {
    boolean contains(K key);

    Optional<V> get(K key);

    boolean isEmpty();

    void put(K key, V value);

    void remove(K key);

    void removeAll();

    long size();

    CacheStats stats();
}
