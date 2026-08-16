package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.UnaryOperator;

public abstract class AbstractC7552hC extends XB implements List, RandomAccess {

    public static final int f48487c = 0;

    public static AbstractC7552hC b(int i10, Object[] objArr) {
        if (i10 == 0) {
            return C6190Xe0.f45779e;
        }
        if (i10 != 1) {
            if (i10 < objArr.length) {
                objArr = Arrays.copyOf(objArr, i10);
            }
            return new C6190Xe0(objArr);
        }
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        return new C5920Sm0(obj);
    }

    public static C7051eC h() {
        return new C7051eC();
    }

    @Override
    public final AbstractC7552hC a() {
        return this;
    }

    @Override
    public final void add(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public AbstractC7552hC subList(int i10, int i11) {
        U60.a(i10, i11, size());
        int i12 = i11 - i10;
        return i12 == size() ? this : i12 == 0 ? C6190Xe0.f45779e : i12 == 1 ? new C5920Sm0(get(i10)) : f(i10, i11);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if (list instanceof RandomAccess) {
            for (int i10 = 0; i10 < size; i10++) {
                if (!V30.a(get(i10), list.get(i10))) {
                    return false;
                }
            }
            return true;
        }
        Iterator it = iterator();
        Iterator it2 = list.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || !V30.a(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public AbstractC7552hC f(int i10, int i11) {
        return new C7385gC(this, i10, i11 - i10);
    }

    @Override
    public void forEach(Consumer consumer) {
        consumer.getClass();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            consumer.accept(get(i10));
        }
    }

    @Override
    public final int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = ~(~(get(i11).hashCode() + (i10 * 31)));
        }
        return i10;
    }

    public AbstractC7552hC i() {
        return size() <= 1 ? this : new C7218fC(this);
    }

    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (obj.equals(get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public AbstractC4895Av0 iterator() {
        return listIterator(0);
    }

    @Override
    public G listIterator(int i10) {
        return new C6885dC(this, size(), i10);
    }

    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override
    public final Object remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void replaceAll(UnaryOperator unaryOperator) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object set(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void sort(Comparator comparator) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Spliterator spliterator() {
        return AbstractC5901Se.a(size(), 1296, new C7927jV0(this), (Comparator) null);
    }

    public static AbstractC7552hC a(Object obj, Object obj2) {
        Object[] a10 = AbstractC9694u30.a(2, new Object[]{obj, obj2});
        return b(a10.length, a10);
    }

    public ListIterator listIterator() {
        return listIterator(0);
    }

    public static AbstractC7552hC a(Object obj, Object obj2, Object obj3) {
        Object[] a10 = AbstractC9694u30.a(3, new Object[]{obj, obj2, obj3});
        return b(a10.length, a10);
    }

    public static AbstractC7552hC a(Object obj, Object obj2, Object obj3, Object obj4) {
        Object[] a10 = AbstractC9694u30.a(4, new Object[]{obj, obj2, obj3, obj4});
        return b(a10.length, a10);
    }

    public static AbstractC7552hC a(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] a10 = AbstractC9694u30.a(5, new Object[]{obj, obj2, obj3, obj4, obj5});
        return b(a10.length, a10);
    }

    public static AbstractC7552hC a(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Object[] a10 = AbstractC9694u30.a(6, new Object[]{obj, obj2, obj3, obj4, obj5, obj6});
        return b(a10.length, a10);
    }

    public static AbstractC7552hC a(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
        Object[] a10 = AbstractC9694u30.a(7, new Object[]{obj, obj2, obj3, obj4, obj5, obj6, obj7});
        return b(a10.length, a10);
    }

    public static AbstractC7552hC a(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8) {
        Object[] a10 = AbstractC9694u30.a(8, new Object[]{obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8});
        return b(a10.length, a10);
    }

    public static AbstractC7552hC a(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10) {
        Object[] a10 = AbstractC9694u30.a(10, new Object[]{obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10});
        return b(a10.length, a10);
    }

    public static AbstractC7552hC a(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object... objArr) {
        if (objArr.length <= 2147483635) {
            int length = objArr.length + 12;
            Object[] objArr2 = new Object[length];
            objArr2[0] = obj;
            objArr2[1] = obj2;
            objArr2[2] = obj3;
            objArr2[3] = obj4;
            objArr2[4] = obj5;
            objArr2[5] = obj6;
            objArr2[6] = obj7;
            objArr2[7] = obj8;
            objArr2[8] = obj9;
            objArr2[9] = obj10;
            objArr2[10] = obj11;
            objArr2[11] = obj12;
            System.arraycopy(objArr, 0, objArr2, 12, objArr.length);
            Object[] a10 = AbstractC9694u30.a(length, objArr2);
            return b(a10.length, a10);
        }
        throw new IllegalArgumentException("the total number of elements must fit in an int");
    }

    public static AbstractC7552hC a(Collection collection) {
        if (collection instanceof XB) {
            AbstractC7552hC a10 = ((XB) collection).a();
            if (!a10.g()) {
                return a10;
            }
            Object[] array = a10.toArray(XB.f45636b);
            return b(array.length, array);
        }
        Object[] array2 = collection.toArray();
        Object[] a11 = AbstractC9694u30.a(array2.length, array2);
        return b(a11.length, a11);
    }

    @Override
    public int a(int i10, Object[] objArr) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }
}
