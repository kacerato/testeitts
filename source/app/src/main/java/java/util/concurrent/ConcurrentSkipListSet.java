package java.util.concurrent;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import java.util.Spliterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ConcurrentSkipListSet.class
 */
public class ConcurrentSkipListSet<E> extends AbstractSet<E> implements NavigableSet<E>, Cloneable, Serializable {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public SortedSet tailSet(Object obj) {
        return tailSet((ConcurrentSkipListSet<E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public SortedSet headSet(Object obj) {
        return headSet((ConcurrentSkipListSet<E>) obj);
    }

    public ConcurrentSkipListSet() {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentSkipListSet(Comparator<? super E> comparator) {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentSkipListSet(Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentSkipListSet(SortedSet<E> s10) {
        throw new RuntimeException("Stub!");
    }

    public ConcurrentSkipListSet<E> m1762clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int size() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean contains(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean add(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean remove(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Iterator<E> iterator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Iterator<E> descendingIterator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean removeAll(Collection<?> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E lower(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E floor(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E ceiling(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E higher(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E pollFirst() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E pollLast() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Comparator<? super E> comparator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E first() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E last() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public NavigableSet<E> subSet(E fromElement, boolean fromInclusive, E toElement, boolean toInclusive) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public NavigableSet<E> headSet(E toElement, boolean inclusive) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public NavigableSet<E> tailSet(E fromElement, boolean inclusive) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public NavigableSet<E> subSet(E fromElement, E toElement) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public NavigableSet<E> headSet(E toElement) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public NavigableSet<E> tailSet(E fromElement) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public NavigableSet<E> descendingSet() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Spliterator<E> spliterator() {
        throw new RuntimeException("Stub!");
    }
}
