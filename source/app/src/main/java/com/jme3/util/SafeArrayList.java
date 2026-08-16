package com.jme3.util;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import okhttp3.v;
import org.eclipse.jdt.internal.core.JavaElement;

public class SafeArrayList<E> implements List<E>, Cloneable {
    private E[] backingArray;
    private List<E> buffer;
    private final Class<E> elementType;
    private int size;

    public class ArrayIterator<E> implements ListIterator<E> {
        private final E[] array;
        private int lastReturned = -1;
        private int next;

        public ArrayIterator(E[] eArr, int i10) {
            this.array = eArr;
            this.next = i10;
        }

        @Override
        public void add(E e10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean hasNext() {
            return this.next != this.array.length;
        }

        @Override
        public boolean hasPrevious() {
            return this.next != 0;
        }

        @Override
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i10 = this.next;
            this.next = i10 + 1;
            this.lastReturned = i10;
            return this.array[i10];
        }

        @Override
        public int nextIndex() {
            return this.next;
        }

        @Override
        public E previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            int i10 = this.next - 1;
            this.next = i10;
            this.lastReturned = i10;
            return this.array[i10];
        }

        @Override
        public int previousIndex() {
            return this.next - 1;
        }

        @Override
        public void remove() {
            SafeArrayList.this.remove(this.array[this.lastReturned]);
        }

        @Override
        public void set(E e10) {
            throw new UnsupportedOperationException();
        }
    }

    public SafeArrayList(Class<E> cls) {
        this.size = 0;
        this.elementType = cls;
    }

    @Override
    public boolean add(E e10) {
        boolean add = getBuffer().add(e10);
        this.size = getBuffer().size();
        return add;
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        boolean addAll = getBuffer().addAll(collection);
        this.size = getBuffer().size();
        return addAll;
    }

    @Override
    public void clear() {
        getBuffer().clear();
        this.size = 0;
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        return Arrays.asList(getArray()).containsAll(collection);
    }

    public final <T> T[] createArray(Class<T> cls, int i10) {
        return (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i10));
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SafeArrayList) {
            return Arrays.equals(((SafeArrayList) obj).getArray(), getArray());
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Iterator<E> it = iterator();
        Iterator<E> it2 = ((List) obj).iterator();
        while (it.hasNext() && it2.hasNext()) {
            E next = it.next();
            E next2 = it2.next();
            if (next != next2 && (next == null || !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    @Override
    public final E get(int i10) {
        E[] eArr = this.backingArray;
        if (eArr != null) {
            return eArr[i10];
        }
        List<E> list = this.buffer;
        if (list != null) {
            return list.get(i10);
        }
        throw new IndexOutOfBoundsException("Index:" + i10 + ", Size:0");
    }

    public final E[] getArray() {
        E[] eArr = this.backingArray;
        if (eArr != null) {
            return eArr;
        }
        List<E> list = this.buffer;
        if (list == null) {
            this.backingArray = createArray(0);
        } else {
            this.backingArray = (E[]) list.toArray(createArray(list.size()));
            this.buffer = null;
        }
        return this.backingArray;
    }

    public final List<E> getBuffer() {
        List<E> list = this.buffer;
        if (list != null) {
            return list;
        }
        if (this.backingArray == null) {
            this.buffer = new ArrayList();
        } else {
            this.buffer = new ArrayList(Arrays.asList(this.backingArray));
            this.backingArray = null;
        }
        return this.buffer;
    }

    @Override
    public int hashCode() {
        E[] array = getArray();
        int length = array.length;
        int i10 = 1;
        for (int i11 = 0; i11 < length; i11++) {
            E e10 = array[i11];
            i10 = (i10 * 31) + (e10 == null ? 0 : e10.hashCode());
        }
        return i10;
    }

    @Override
    public int indexOf(Object obj) {
        E[] array = getArray();
        for (int i10 = 0; i10 < array.length; i10++) {
            E e10 = array[i10];
            if (e10 == obj) {
                return i10;
            }
            if (e10 != null && e10.equals(obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public final boolean isEmpty() {
        return this.size == 0;
    }

    @Override
    public Iterator<E> iterator() {
        return listIterator();
    }

    @Override
    public int lastIndexOf(Object obj) {
        E[] array = getArray();
        for (int length = array.length - 1; length >= 0; length--) {
            E e10 = array[length];
            if (e10 == obj) {
                return length;
            }
            if (e10 != null && e10.equals(obj)) {
                return length;
            }
        }
        return -1;
    }

    @Override
    public ListIterator<E> listIterator() {
        return new ArrayIterator(getArray(), 0);
    }

    @Override
    public boolean remove(Object obj) {
        boolean remove = getBuffer().remove(obj);
        this.size = getBuffer().size();
        return remove;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean removeAll = getBuffer().removeAll(collection);
        this.size = getBuffer().size();
        return removeAll;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll = getBuffer().retainAll(collection);
        this.size = getBuffer().size();
        return retainAll;
    }

    @Override
    public E set(int i10, E e10) {
        return getBuffer().set(i10, e10);
    }

    @Override
    public final int size() {
        return this.size;
    }

    @Override
    public List<E> subList(int i10, int i11) {
        return Collections.unmodifiableList(Arrays.asList(getArray()).subList(i10, i11));
    }

    @Override
    public Object[] toArray() {
        return getArray();
    }

    public String toString() {
        Object[] array = getArray();
        if (array.length == 0) {
            return v.f99450n;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        for (int i10 = 0; i10 < array.length; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            Object obj = array[i10];
            if (obj == this) {
                obj = "(this Collection)";
            }
            sb2.append(obj);
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    public SafeArrayList<E> m1309clone() {
        try {
            SafeArrayList<E> safeArrayList = (SafeArrayList) super.clone();
            E[] eArr = this.backingArray;
            if (eArr != null) {
                safeArrayList.backingArray = (E[]) ((Object[]) eArr.clone());
            }
            List<E> list = this.buffer;
            if (list != null) {
                safeArrayList.buffer = (List) ((ArrayList) list).clone();
            }
            return safeArrayList;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public final E[] createArray(int i10) {
        return (E[]) createArray(this.elementType, i10);
    }

    @Override
    public ListIterator<E> listIterator(int i10) {
        return new ArrayIterator(getArray(), i10);
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        E[] array = getArray();
        if (tArr.length < array.length) {
            return (T[]) Arrays.copyOf(array, array.length, tArr.getClass());
        }
        System.arraycopy(array, 0, tArr, 0, array.length);
        if (tArr.length > array.length) {
            tArr[array.length] = null;
        }
        return tArr;
    }

    @Override
    public void add(int i10, E e10) {
        getBuffer().add(i10, e10);
        this.size = getBuffer().size();
    }

    @Override
    public boolean addAll(int i10, Collection<? extends E> collection) {
        boolean addAll = getBuffer().addAll(i10, collection);
        this.size = getBuffer().size();
        return addAll;
    }

    @Override
    public E remove(int i10) {
        E remove = getBuffer().remove(i10);
        this.size = getBuffer().size();
        return remove;
    }

    public SafeArrayList(Class<E> cls, int i10) {
        this.size = 0;
        this.elementType = cls;
        this.buffer = new ArrayList(i10);
    }

    public SafeArrayList(Class<E> cls, Collection<? extends E> collection) {
        this.size = 0;
        this.elementType = cls;
        ArrayList arrayList = new ArrayList(collection);
        this.buffer = arrayList;
        this.size = arrayList.size();
    }
}
