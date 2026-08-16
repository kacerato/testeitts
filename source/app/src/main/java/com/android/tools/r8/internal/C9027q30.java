package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class C9027q30 extends AbstractC7185f1 implements RandomAccess, Cloneable, Serializable {

    public transient Object[] f51703b;

    public int f51704c;

    public C9027q30(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(HC.a(i10, "Initial capacity (", ") is negative"));
        }
        this.f51703b = new Object[i10];
    }

    @Override
    public final void a(int i10, int i11) {
        Y3.a(this.f51704c, i10, i11);
        Object[] objArr = this.f51703b;
        System.arraycopy(objArr, i11, objArr, i10, this.f51704c - i11);
        int i12 = i11 - i10;
        this.f51704c -= i12;
        while (true) {
            int i13 = i12 - 1;
            if (i12 == 0) {
                return;
            }
            this.f51703b[this.f51704c + i13] = null;
            i12 = i13;
        }
    }

    @Override
    public final void add(int i10, Object obj) {
        j(i10);
        int i11 = this.f51704c + 1;
        if (i11 > this.f51703b.length) {
            Object[] objArr = new Object[(int) Math.max(Math.min(r1.length * 2, 2147483639L), i11)];
            System.arraycopy(this.f51703b, 0, objArr, 0, this.f51704c);
            this.f51703b = objArr;
        }
        int i12 = this.f51704c;
        if (i10 != i12) {
            Object[] objArr2 = this.f51703b;
            System.arraycopy(objArr2, i10, objArr2, i10 + 1, i12 - i10);
        }
        this.f51703b[i10] = obj;
        this.f51704c++;
    }

    @Override
    public final void clear() {
        Arrays.fill(this.f51703b, 0, this.f51704c, (Object) null);
        this.f51704c = 0;
    }

    public final Object clone() {
        C9027q30 c9027q30 = new C9027q30(this.f51704c);
        System.arraycopy(this.f51703b, 0, c9027q30.f51703b, 0, this.f51704c);
        c9027q30.f51704c = this.f51704c;
        return c9027q30;
    }

    @Override
    public final Object get(int i10) {
        if (i10 < this.f51704c) {
            return this.f51703b[i10];
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f51704c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final int indexOf(Object obj) {
        for (int i10 = 0; i10 < this.f51704c; i10++) {
            Object[] objArr = this.f51703b;
            if (obj == null) {
                if (objArr[i10] == null) {
                    return i10;
                }
            } else {
                if (obj.equals(objArr[i10])) {
                    return i10;
                }
            }
        }
        return -1;
    }

    @Override
    public final boolean isEmpty() {
        return this.f51704c == 0;
    }

    @Override
    public final G30 l(int i10) {
        j(i10);
        return new C8860p30(this, i10);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        int i10;
        int i11 = this.f51704c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                return -1;
            }
            Object[] objArr = this.f51703b;
            if (obj == null) {
                if (objArr[i10] == null) {
                    break;
                }
                i11 = i10;
            } else {
                if (obj.equals(objArr[i10])) {
                    break;
                }
                i11 = i10;
            }
        }
        return i10;
    }

    @Override
    public final ListIterator listIterator(int i10) {
        j(i10);
        return new C8860p30(this, i10);
    }

    @Override
    public final Object remove(int i10) {
        int i11 = this.f51704c;
        if (i10 < i11) {
            Object[] objArr = this.f51703b;
            Object obj = objArr[i10];
            int i12 = i11 - 1;
            this.f51704c = i12;
            if (i10 != i12) {
                System.arraycopy(objArr, i10 + 1, objArr, i10, i12 - i10);
            }
            this.f51703b[this.f51704c] = null;
            return obj;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f51704c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final boolean removeAll(Collection collection) {
        int i10;
        Object[] objArr = this.f51703b;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.f51704c;
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
        boolean z10 = this.f51704c != i12;
        this.f51704c = i12;
        return z10;
    }

    @Override
    public final Object set(int i10, Object obj) {
        if (i10 < this.f51704c) {
            Object[] objArr = this.f51703b;
            Object obj2 = objArr[i10];
            objArr[i10] = obj;
            return obj2;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f51704c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final int size() {
        return this.f51704c;
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
        int i10 = this.f51704c + 1;
        if (i10 > this.f51703b.length) {
            Object[] objArr = new Object[(int) Math.max(Math.min(r2.length * 2, 2147483639L), i10)];
            System.arraycopy(this.f51703b, 0, objArr, 0, this.f51704c);
            this.f51703b = objArr;
        }
        Object[] objArr2 = this.f51703b;
        int i11 = this.f51704c;
        this.f51704c = i11 + 1;
        objArr2[i11] = obj;
        return true;
    }
}
