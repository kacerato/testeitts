package com.itsmagic.engine.Engines.Utils.ListUtils;

import Ic.InterfaceC2637p;
import Nc.b;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.RandomAccess;

@InterfaceC2637p
public class SteppedArrayList<T> extends AbstractList<T> implements RandomAccess {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    private Object[] array;
    private final int chunkSize;
    private int size;

    public SteppedArrayList() {
        this(50);
    }

    private void checkElementIndex(int index) {
        if (index < 0 || index >= this.size) {
            throw new IndexOutOfBoundsException("Index: " + index + ", Size: " + this.size);
        }
    }

    private void checkPositionIndex(int index) {
        if (index < 0 || index > this.size) {
            throw new IndexOutOfBoundsException("Index: " + index + ", Size: " + this.size);
        }
    }

    private int getChunkedCapacity(int wantedSize) {
        if (wantedSize <= 0) {
            return 0;
        }
        int i10 = this.chunkSize;
        return (((wantedSize + i10) - 1) / i10) * i10;
    }

    private void shrinkCapacity() {
        int chunkedCapacity = getChunkedCapacity(this.size);
        Object[] objArr = this.array;
        if (chunkedCapacity < objArr.length) {
            this.array = Arrays.copyOf(objArr, chunkedCapacity);
        }
    }

    @Override
    public boolean add(T element) {
        ensureCapacity(this.size + 1);
        Object[] objArr = this.array;
        int i10 = this.size;
        objArr[i10] = element;
        this.size = i10 + 1;
        this.modCount++;
        return true;
    }

    @Override
    public boolean addAll(int index, Collection<? extends T> collection) {
        int length;
        checkPositionIndex(index);
        if (collection != null) {
            if (collection instanceof SteppedArrayList) {
                SteppedArrayList steppedArrayList = (SteppedArrayList) collection;
                length = steppedArrayList.size;
                if (length == 0) {
                    return false;
                }
                ensureCapacity(this.size + length);
                Object[] objArr = this.array;
                System.arraycopy(objArr, index, objArr, index + length, this.size - index);
                System.arraycopy(steppedArrayList.array, 0, this.array, index, length);
            } else {
                Object[] array = collection.toArray();
                length = array.length;
                if (length == 0) {
                    return false;
                }
                ensureCapacity(this.size + length);
                Object[] objArr2 = this.array;
                System.arraycopy(objArr2, index, objArr2, index + length, this.size - index);
                System.arraycopy(array, 0, this.array, index, length);
            }
            this.size += length;
            this.modCount++;
            return true;
        }
        throw new NullPointerException("collection can't be null");
    }

    @Override
    public void clear() {
        int i10 = this.size;
        if (i10 == 0 && this.array.length == 0) {
            return;
        }
        Arrays.fill(this.array, 0, i10, (Object) null);
        this.size = 0;
        shrinkCapacity();
        this.modCount++;
    }

    @Override
    public boolean contains(Object o10) {
        return indexOf(o10) >= 0;
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        if (collection == null) {
            throw new NullPointerException("collection can't be null");
        }
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public void ensureCapacity(int minCapacity) {
        if (minCapacity <= this.array.length) {
            return;
        }
        int chunkedCapacity = getChunkedCapacity(minCapacity);
        Object[] objArr = this.array;
        if (chunkedCapacity > objArr.length) {
            this.array = Arrays.copyOf(objArr, chunkedCapacity);
        }
    }

    @Override
    public T get(int i10) {
        checkElementIndex(i10);
        return (T) this.array[i10];
    }

    public int getCapacity() {
        return this.array.length;
    }

    public int getChunkSize() {
        return this.chunkSize;
    }

    @Override
    public int indexOf(Object o10) {
        for (int i10 = 0; i10 < this.size; i10++) {
            Object obj = this.array[i10];
            if (obj == null) {
                if (o10 == null) {
                    return i10;
                }
            } else {
                if (obj.equals(o10)) {
                    return i10;
                }
            }
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override
    public Iterator<T> iterator() {
        return super.iterator();
    }

    @Override
    public int lastIndexOf(Object o10) {
        for (int i10 = this.size - 1; i10 >= 0; i10--) {
            Object obj = this.array[i10];
            if (obj == null) {
                if (o10 == null) {
                    return i10;
                }
            } else {
                if (obj.equals(o10)) {
                    return i10;
                }
            }
        }
        return -1;
    }

    @Override
    public ListIterator<T> listIterator() {
        return super.listIterator();
    }

    @Override
    public T remove(int i10) {
        checkElementIndex(i10);
        Object[] objArr = this.array;
        T t10 = (T) objArr[i10];
        int i11 = (this.size - i10) - 1;
        if (i11 > 0) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, i11);
        }
        int i12 = this.size - 1;
        this.size = i12;
        this.array[i12] = null;
        shrinkCapacity();
        this.modCount++;
        return t10;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        if (collection == null) {
            throw new NullPointerException("collection can't be null");
        }
        boolean z10 = false;
        for (int i10 = this.size - 1; i10 >= 0; i10--) {
            if (collection.contains(this.array[i10])) {
                remove(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        if (collection == null) {
            throw new NullPointerException("collection can't be null");
        }
        boolean z10 = false;
        for (int i10 = this.size - 1; i10 >= 0; i10--) {
            if (!collection.contains(this.array[i10])) {
                remove(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public T set(int i10, T t10) {
        checkElementIndex(i10);
        Object[] objArr = this.array;
        T t11 = (T) objArr[i10];
        objArr[i10] = t10;
        return t11;
    }

    @Override
    public int size() {
        return this.size;
    }

    @Override
    public Object[] toArray() {
        return Arrays.copyOf(this.array, this.size);
    }

    public void trimToChunkSize() {
        shrinkCapacity();
    }

    public void trimToSize() {
        shrinkCapacity();
    }

    public SteppedArrayList(Collection<? extends T> collection) {
        this();
        if (collection != null) {
            addAll(collection);
            return;
        }
        throw new NullPointerException("collection can't be null");
    }

    @Override
    public ListIterator<T> listIterator(int index) {
        return super.listIterator(index);
    }

    @Override
    public <E> E[] toArray(E[] eArr) {
        if (eArr != null) {
            int length = eArr.length;
            int i10 = this.size;
            if (length < i10) {
                return (E[]) Arrays.copyOf(this.array, i10, eArr.getClass());
            }
            System.arraycopy(this.array, 0, eArr, 0, i10);
            int length2 = eArr.length;
            int i11 = this.size;
            if (length2 > i11) {
                eArr[i11] = null;
            }
            return eArr;
        }
        throw new NullPointerException("destination can't be null");
    }

    public SteppedArrayList(int chunkSize) {
        this.array = EMPTY_ARRAY;
        this.size = 0;
        this.chunkSize = b.N(10, chunkSize);
    }

    @Override
    public void add(int index, T element) {
        checkPositionIndex(index);
        ensureCapacity(this.size + 1);
        Object[] objArr = this.array;
        System.arraycopy(objArr, index, objArr, index + 1, this.size - index);
        this.array[index] = element;
        this.size++;
        this.modCount++;
    }

    @Override
    public boolean addAll(Collection<? extends T> collection) {
        return addAll(this.size, collection);
    }
}
