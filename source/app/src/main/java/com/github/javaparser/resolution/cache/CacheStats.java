package com.github.javaparser.resolution.cache;

public interface CacheStats {
    double averageLoadPenalty();

    long evictionCount();

    long hitCount();

    double hitRate();

    long loadCount();

    long loadExceptionCount();

    double loadExceptionRate();

    long loadSuccessCount();

    CacheStats minus(CacheStats other);

    long missCount();

    double missRate();

    CacheStats plus(CacheStats other);

    long requestCount();

    long totalLoadTime();
}
