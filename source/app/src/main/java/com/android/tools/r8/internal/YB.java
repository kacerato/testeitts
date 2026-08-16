package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.List;
import java.util.function.Predicate;

public final class YB extends ArrayDeque {

    public boolean f45951b;

    public YB(List list) {
        super(list);
        this.f45951b = false;
    }

    @Override
    public final boolean add(Object obj) {
        if (this.f45951b) {
            throw new C5417Jv0("Modification not allowed on immutable structure");
        }
        return super.add(obj);
    }

    @Override
    public final boolean addAll(Collection collection) {
        if (this.f45951b) {
            throw new C5417Jv0("Modification not allowed on immutable structure");
        }
        return super.addAll(collection);
    }

    @Override
    public final void addFirst(Object obj) {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final void addLast(Object obj) {
        if (this.f45951b) {
            throw new C5417Jv0("Modification not allowed on immutable structure");
        }
        super.addLast(obj);
    }

    @Override
    public final Object pop() {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final void push(Object obj) {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final boolean remove(Object obj) {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final boolean removeAll(Collection collection) {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final Object removeFirst() {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final boolean removeFirstOccurrence(Object obj) {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final boolean removeIf(Predicate predicate) {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final Object removeLast() {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final boolean removeLastOccurrence(Object obj) {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }

    @Override
    public final Object remove() {
        throw new C5417Jv0("Modification not allowed on immutable structure");
    }
}
