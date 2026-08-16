package java.util;

import java.io.Serializable;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Vector.class
 */
public class Vector<E> extends AbstractList<E> implements List<E>, RandomAccess, Cloneable, Serializable {
    protected int capacityIncrement;
    protected int elementCount;
    protected Object[] elementData = null;

    public Vector(int initialCapacity, int capacityIncrement) {
        throw new RuntimeException("Stub!");
    }

    public Vector(int initialCapacity) {
        throw new RuntimeException("Stub!");
    }

    public Vector() {
        throw new RuntimeException("Stub!");
    }

    public Vector(Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void copyInto(Object[] anArray) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void trimToSize() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void ensureCapacity(int minCapacity) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setSize(int newSize) {
        throw new RuntimeException("Stub!");
    }

    public synchronized int capacity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int size() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }

    public Enumeration<E> elements() {
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

    public synchronized int indexOf(Object o10, int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int lastIndexOf(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public synchronized int lastIndexOf(Object o10, int index) {
        throw new RuntimeException("Stub!");
    }

    public synchronized E elementAt(int index) {
        throw new RuntimeException("Stub!");
    }

    public synchronized E firstElement() {
        throw new RuntimeException("Stub!");
    }

    public synchronized E lastElement() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setElementAt(E obj, int index) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void removeElementAt(int index) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void insertElementAt(E obj, int index) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void addElement(E obj) {
        throw new RuntimeException("Stub!");
    }

    public synchronized boolean removeElement(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void removeAllElements() {
        throw new RuntimeException("Stub!");
    }

    public synchronized Object clone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Object[] toArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized <T> T[] toArray(T[] a10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized E get(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized E set(int index, E element) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean add(E e10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean remove(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void add(int index, E element) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized E remove(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void clear() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean containsAll(Collection<?> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean addAll(Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean removeAll(Collection<?> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean retainAll(Collection<?> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean addAll(int index, Collection<? extends E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized List<E> subList(int fromIndex, int toIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void removeRange(int fromIndex, int toIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized ListIterator<E> listIterator(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized ListIterator<E> listIterator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized Iterator<E> iterator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void forEach(Consumer<? super E> action) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized boolean removeIf(Predicate<? super E> filter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void replaceAll(UnaryOperator<E> operator) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void sort(Comparator<? super E> c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Spliterator<E> spliterator() {
        throw new RuntimeException("Stub!");
    }
}
