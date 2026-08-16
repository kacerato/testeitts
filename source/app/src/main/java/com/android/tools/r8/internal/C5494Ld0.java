package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class C5494Ld0 extends B1 implements RandomAccess, Cloneable, Serializable {

    public transient Object[] f42025b;

    public int f42026c;

    public C5494Ld0(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(HC.a(i10, "Initial capacity (", ") is negative"));
        }
        this.f42025b = new Object[i10];
    }

    @Override
    public final void a(int i10, int i11) {
        Y3.a(this.f42026c, i10, i11);
        Object[] objArr = this.f42025b;
        System.arraycopy(objArr, i11, objArr, i10, this.f42026c - i11);
        int i12 = i11 - i10;
        this.f42026c -= i12;
        while (true) {
            int i13 = i12 - 1;
            if (i12 == 0) {
                return;
            }
            this.f42025b[this.f42026c + i13] = null;
            i12 = i13;
        }
    }

    @Override
    public final void add(int i10, Object obj) {
        j(i10);
        int i11 = this.f42026c + 1;
        if (i11 > this.f42025b.length) {
            Object[] objArr = new Object[(int) Math.max(Math.min(r1.length * 2, 2147483639L), i11)];
            System.arraycopy(this.f42025b, 0, objArr, 0, this.f42026c);
            this.f42025b = objArr;
        }
        int i12 = this.f42026c;
        if (i10 != i12) {
            Object[] objArr2 = this.f42025b;
            System.arraycopy(objArr2, i10, objArr2, i10 + 1, i12 - i10);
        }
        this.f42025b[i10] = obj;
        this.f42026c++;
    }

    @Override
    public final void clear() {
        Arrays.fill(this.f42025b, 0, this.f42026c, (Object) null);
        this.f42026c = 0;
    }

    public final Object clone() {
        C5494Ld0 c5494Ld0 = new C5494Ld0(this.f42026c);
        System.arraycopy(this.f42025b, 0, c5494Ld0.f42025b, 0, this.f42026c);
        c5494Ld0.f42026c = this.f42026c;
        return c5494Ld0;
    }

    @Override
    public final Object get(int i10) {
        if (i10 < this.f42026c) {
            return this.f42025b[i10];
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f42026c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final int indexOf(Object obj) {
        for (int i10 = 0; i10 < this.f42026c; i10++) {
            if (obj == this.f42025b[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public final boolean isEmpty() {
        return this.f42026c == 0;
    }

    @Override
    public final G30 l(int i10) {
        j(i10);
        return new C5436Kd0(this, i10);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        int i10 = this.f42026c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return -1;
            }
            if (obj == this.f42025b[i11]) {
                return i11;
            }
            i10 = i11;
        }
    }

    @Override
    public final ListIterator listIterator(int i10) {
        j(i10);
        return new C5436Kd0(this, i10);
    }

    @Override
    public final Object remove(int i10) {
        int i11 = this.f42026c;
        if (i10 < i11) {
            Object[] objArr = this.f42025b;
            Object obj = objArr[i10];
            int i12 = i11 - 1;
            this.f42026c = i12;
            if (i10 != i12) {
                System.arraycopy(objArr, i10 + 1, objArr, i10, i12 - i10);
            }
            this.f42025b[this.f42026c] = null;
            return obj;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f42026c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final boolean removeAll(Collection collection) {
        int i10;
        Object[] objArr = this.f42025b;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.f42026c;
            if (i11 >= i10) {
                break;
            }
            if (!collection.contains(objArr[i11])) {
                objArr[i12] = objArr[i11];
                i12++;
            }
            i11++;
        }
        Arrays.fill(objArr, i12, i10, (Object) null);
        boolean z10 = this.f42026c != i12;
        this.f42026c = i12;
        return z10;
    }

    @Override
    public final Object set(int i10, Object obj) {
        if (i10 < this.f42026c) {
            Object[] objArr = this.f42025b;
            Object obj2 = objArr[i10];
            objArr[i10] = obj;
            return obj2;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f42026c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final int size() {
        return this.f42026c;
    }

    @Override
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override
    public final boolean add(Object obj) {
        int i10 = this.f42026c + 1;
        if (i10 > this.f42025b.length) {
            Object[] objArr = new Object[(int) Math.max(Math.min(r2.length * 2, 2147483639L), i10)];
            System.arraycopy(this.f42025b, 0, objArr, 0, this.f42026c);
            this.f42025b = objArr;
        }
        Object[] objArr2 = this.f42025b;
        int i11 = this.f42026c;
        this.f42026c = i11 + 1;
        objArr2[i11] = obj;
        return true;
    }
}
