package com.android.dx.util;

public interface IntSet {
    void add(int i10);

    int elements();

    boolean has(int i10);

    IntIterator iterator();

    void merge(IntSet intSet);

    void remove(int i10);
}
