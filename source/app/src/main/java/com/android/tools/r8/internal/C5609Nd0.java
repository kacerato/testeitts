package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;

public final class C5609Nd0 extends C1 implements Serializable {

    public transient Object[] f42643b;

    public int f42644c;

    public C5609Nd0(int i10, Object[] objArr) {
        this.f42643b = objArr;
        this.f42644c = i10;
        if (i10 <= objArr.length) {
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "The provided size (", ") is larger than or equal to the array size (");
        a10.append(objArr.length);
        a10.append(")");
        throw new IllegalArgumentException(a10.toString());
    }

    @Override
    public final boolean add(Object obj) {
        int i10;
        int i11 = this.f42644c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                i10 = -1;
                break;
            }
            if (this.f42643b[i10] == obj) {
                break;
            }
            i11 = i10;
        }
        if (i10 != -1) {
            return false;
        }
        int i12 = this.f42644c;
        if (i12 == this.f42643b.length) {
            Object[] objArr = new Object[i12 == 0 ? 2 : i12 * 2];
            while (true) {
                int i13 = i12 - 1;
                if (i12 == 0) {
                    break;
                }
                objArr[i13] = this.f42643b[i13];
                i12 = i13;
            }
            this.f42643b = objArr;
        }
        Object[] objArr2 = this.f42643b;
        int i14 = this.f42644c;
        this.f42644c = i14 + 1;
        objArr2[i14] = obj;
        return true;
    }

    @Override
    public final void clear() {
        Arrays.fill(this.f42643b, 0, this.f42644c, (Object) null);
        this.f42644c = 0;
    }

    public final Object clone() {
        try {
            C5609Nd0 c5609Nd0 = (C5609Nd0) super.clone();
            c5609Nd0.f42643b = (Object[]) this.f42643b.clone();
            return c5609Nd0;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean contains(Object obj) {
        int i10;
        int i11 = this.f42644c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                i10 = -1;
                break;
            }
            if (this.f42643b[i10] == obj) {
                break;
            }
            i11 = i10;
        }
        return i10 != -1;
    }

    @Override
    public final boolean isEmpty() {
        return this.f42644c == 0;
    }

    @Override
    public final A30 iterator() {
        return new C5551Md0(this);
    }

    @Override
    public final boolean remove(Object obj) {
        int i10;
        int i11 = this.f42644c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                i10 = -1;
                break;
            }
            if (this.f42643b[i10] == obj) {
                break;
            }
            i11 = i10;
        }
        if (i10 == -1) {
            return false;
        }
        int i12 = (this.f42644c - i10) - 1;
        for (int i13 = 0; i13 < i12; i13++) {
            Object[] objArr = this.f42643b;
            int i14 = i10 + i13;
            objArr[i14] = objArr[i14 + 1];
        }
        int i15 = this.f42644c - 1;
        this.f42644c = i15;
        this.f42643b[i15] = null;
        return true;
    }

    @Override
    public final int size() {
        return this.f42644c;
    }

    @Override
    public final Iterator iterator() {
        return new C5551Md0(this);
    }
}
