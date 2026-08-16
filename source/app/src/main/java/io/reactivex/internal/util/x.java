package io.reactivex.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.concurrent.atomic.AtomicInteger;

public final class x<T> extends AtomicInteger implements List<T>, RandomAccess {

    public static final long f92463c = 3972397474470203923L;

    public final ArrayList<T> f92464b;

    public x() {
        this.f92464b = new ArrayList<>();
    }

    @Override
    public boolean add(T t10) {
        boolean add = this.f92464b.add(t10);
        lazySet(this.f92464b.size());
        return add;
    }

    @Override
    public boolean addAll(Collection<? extends T> collection) {
        boolean addAll = this.f92464b.addAll(collection);
        lazySet(this.f92464b.size());
        return addAll;
    }

    @Override
    public void clear() {
        this.f92464b.clear();
        lazySet(0);
    }

    @Override
    public boolean contains(Object obj) {
        return this.f92464b.contains(obj);
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return this.f92464b.containsAll(collection);
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof x ? this.f92464b.equals(((x) obj).f92464b) : this.f92464b.equals(obj);
    }

    @Override
    public T get(int i10) {
        return this.f92464b.get(i10);
    }

    @Override
    public int hashCode() {
        return this.f92464b.hashCode();
    }

    @Override
    public int indexOf(Object obj) {
        return this.f92464b.indexOf(obj);
    }

    @Override
    public boolean isEmpty() {
        return get() == 0;
    }

    @Override
    public Iterator<T> iterator() {
        return this.f92464b.iterator();
    }

    @Override
    public int lastIndexOf(Object obj) {
        return this.f92464b.lastIndexOf(obj);
    }

    @Override
    public ListIterator<T> listIterator() {
        return this.f92464b.listIterator();
    }

    @Override
    public boolean remove(Object obj) {
        boolean remove = this.f92464b.remove(obj);
        lazySet(this.f92464b.size());
        return remove;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll = this.f92464b.removeAll(collection);
        lazySet(this.f92464b.size());
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll = this.f92464b.retainAll(collection);
        lazySet(this.f92464b.size());
        return retainAll;
    }

    @Override
    public T set(int i10, T t10) {
        return this.f92464b.set(i10, t10);
    }

    @Override
    public int size() {
        return get();
    }

    @Override
    public List<T> subList(int i10, int i11) {
        return this.f92464b.subList(i10, i11);
    }

    @Override
    public Object[] toArray() {
        return this.f92464b.toArray();
    }

    @Override
    public String toString() {
        return this.f92464b.toString();
    }

    @Override
    public ListIterator<T> listIterator(int i10) {
        return this.f92464b.listIterator(i10);
    }

    @Override
    public <E> E[] toArray(E[] eArr) {
        return (E[]) this.f92464b.toArray(eArr);
    }

    public x(int i10) {
        this.f92464b = new ArrayList<>(i10);
    }

    @Override
    public void add(int i10, T t10) {
        this.f92464b.add(i10, t10);
        lazySet(this.f92464b.size());
    }

    @Override
    public boolean addAll(int i10, Collection<? extends T> collection) {
        boolean addAll = this.f92464b.addAll(i10, collection);
        lazySet(this.f92464b.size());
        return addAll;
    }

    @Override
    public T remove(int i10) {
        T remove = this.f92464b.remove(i10);
        lazySet(this.f92464b.size());
        return remove;
    }
}
