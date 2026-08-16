package java.util.concurrent;

import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/CopyOnWriteArrayList.class
 */
public class CopyOnWriteArrayList<E> implements List<E>, RandomAccess, Cloneable, Serializable {
    public CopyOnWriteArrayList() {
        throw new RuntimeException("Stub!");
    }

    public CopyOnWriteArrayList(Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    public CopyOnWriteArrayList(E[] toCopyIn) {
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
    public int indexOf(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int indexOf(E e10, int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int lastIndexOf(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int lastIndexOf(E e10, int index) {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object[] toArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> T[] toArray(T[] a10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E get(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E set(int index, E element) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean add(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void add(int index, E element) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public E remove(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean remove(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public boolean addIfAbsent(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean containsAll(Collection<?> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean removeAll(Collection<?> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean retainAll(Collection<?> c10) {
        throw new RuntimeException("Stub!");
    }

    public int addAllAbsent(Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean addAll(Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean addAll(int index, Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void forEach(Consumer<? super E> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean removeIf(Predicate<? super E> filter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void replaceAll(UnaryOperator<E> operator) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void sort(Comparator<? super E> c10) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Iterator<E> iterator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ListIterator<E> listIterator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ListIterator<E> listIterator(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Spliterator<E> spliterator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<E> subList(int fromIndex, int toIndex) {
        throw new RuntimeException("Stub!");
    }
}
