package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;

public final class C9360s30 extends AbstractC7519h1 implements Serializable {

    public transient Object[] f52261b;

    public int f52262c;

    public C9360s30(int i10, Object[] objArr) {
        this.f52261b = objArr;
        this.f52262c = i10;
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
        if (c(obj) != -1) {
            return false;
        }
        int i10 = this.f52262c;
        if (i10 == this.f52261b.length) {
            Object[] objArr = new Object[i10 == 0 ? 2 : i10 * 2];
            while (true) {
                int i11 = i10 - 1;
                if (i10 == 0) {
                    break;
                }
                objArr[i11] = this.f52261b[i11];
                i10 = i11;
            }
            this.f52261b = objArr;
        }
        Object[] objArr2 = this.f52261b;
        int i12 = this.f52262c;
        this.f52262c = i12 + 1;
        objArr2[i12] = obj;
        return true;
    }

    public final int c(Object obj) {
        int i10;
        int i11 = this.f52262c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                return -1;
            }
            Object obj2 = this.f52261b[i10];
            if (obj2 == null) {
                if (obj == null) {
                    break;
                }
                i11 = i10;
            } else {
                if (obj2.equals(obj)) {
                    break;
                }
                i11 = i10;
            }
        }
        return i10;
    }

    @Override
    public final void clear() {
        Arrays.fill(this.f52261b, 0, this.f52262c, (Object) null);
        this.f52262c = 0;
    }

    public final Object clone() {
        try {
            C9360s30 c9360s30 = (C9360s30) super.clone();
            c9360s30.f52261b = (Object[]) this.f52261b.clone();
            return c9360s30;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean contains(Object obj) {
        return c(obj) != -1;
    }

    @Override
    public final boolean isEmpty() {
        return this.f52262c == 0;
    }

    @Override
    public final A30 iterator() {
        return new C9193r30(this);
    }

    @Override
    public final boolean remove(Object obj) {
        int c10 = c(obj);
        if (c10 == -1) {
            return false;
        }
        int i10 = (this.f52262c - c10) - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            Object[] objArr = this.f52261b;
            int i12 = c10 + i11;
            objArr[i12] = objArr[i12 + 1];
        }
        int i13 = this.f52262c - 1;
        this.f52262c = i13;
        this.f52261b[i13] = null;
        return true;
    }

    @Override
    public final int size() {
        return this.f52262c;
    }

    @Override
    public final Iterator iterator() {
        return new C9193r30(this);
    }
}
