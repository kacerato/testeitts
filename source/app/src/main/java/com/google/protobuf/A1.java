package com.google.protobuf;

import java.util.Arrays;
import java.util.RandomAccess;

public final class A1<E> extends AbstractC12665d<E> implements RandomAccess {

    public static final A1<Object> f67785f;

    public E[] f67786d;

    public int f67787e;

    static {
        A1<Object> a12 = new A1<>(new Object[0], 0);
        f67785f = a12;
        a12.r9();
    }

    public A1() {
        this(new Object[10], 0);
    }

    public static <E> E[] j(int i10) {
        return (E[]) new Object[i10];
    }

    public static <E> A1<E> k() {
        return (A1<E>) f67785f;
    }

    private void l(int index) {
        if (index < 0 || index >= this.f67787e) {
            throw new IndexOutOfBoundsException(m(index));
        }
    }

    private String m(int index) {
        return "Index:" + index + ", Size:" + this.f67787e;
    }

    @Override
    public boolean add(E e10) {
        a();
        int i10 = this.f67787e;
        E[] eArr = this.f67786d;
        if (i10 == eArr.length) {
            this.f67786d = (E[]) Arrays.copyOf(eArr, ((i10 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f67786d;
        int i11 = this.f67787e;
        this.f67787e = i11 + 1;
        eArr2[i11] = e10;
        this.modCount++;
        return true;
    }

    @Override
    public E get(int index) {
        l(index);
        return this.f67786d[index];
    }

    @Override
    public A1<E> q2(int capacity) {
        if (capacity >= this.f67787e) {
            return new A1<>(Arrays.copyOf(this.f67786d, capacity), this.f67787e);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public E remove(int index) {
        a();
        l(index);
        E[] eArr = this.f67786d;
        E e10 = eArr[index];
        if (index < this.f67787e - 1) {
            System.arraycopy(eArr, index + 1, eArr, index, (r2 - index) - 1);
        }
        this.f67787e--;
        this.modCount++;
        return e10;
    }

    @Override
    public E set(int index, E element) {
        a();
        l(index);
        E[] eArr = this.f67786d;
        E e10 = eArr[index];
        eArr[index] = element;
        this.modCount++;
        return e10;
    }

    @Override
    public int size() {
        return this.f67787e;
    }

    public A1(E[] array, int size) {
        this.f67786d = array;
        this.f67787e = size;
    }

    @Override
    public void add(int i10, E e10) {
        int i11;
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f67787e)) {
            E[] eArr = this.f67786d;
            if (i11 < eArr.length) {
                System.arraycopy(eArr, i10, eArr, i10 + 1, i11 - i10);
            } else {
                E[] eArr2 = (E[]) j(((i11 * 3) / 2) + 1);
                System.arraycopy(this.f67786d, 0, eArr2, 0, i10);
                System.arraycopy(this.f67786d, i10, eArr2, i10 + 1, this.f67787e - i10);
                this.f67786d = eArr2;
            }
            this.f67786d[i10] = e10;
            this.f67787e++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }
}
