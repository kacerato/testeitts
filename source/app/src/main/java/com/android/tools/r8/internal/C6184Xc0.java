package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Set;

public final class C6184Xc0 extends AbstractC10188x1 implements Cloneable {

    public transient Object[] f45770c = AbstractC9527t30.f52512a;

    public transient int[] f45771d = GH.f40457a;

    public int f45772e;

    @Override
    public final int b(Object obj) {
        Object[] objArr = this.f45770c;
        int i10 = this.f45772e;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return this.f53665b;
            }
            if (objArr[i11] == obj) {
                return this.f45771d[i11];
            }
            i10 = i11;
        }
    }

    @Override
    public final int c(Object obj) {
        int d10 = d(obj);
        if (d10 == -1) {
            return this.f53665b;
        }
        int i10 = this.f45771d[d10];
        int i11 = (this.f45772e - d10) - 1;
        Object[] objArr = this.f45770c;
        int i12 = d10 + 1;
        System.arraycopy(objArr, i12, objArr, d10, i11);
        int[] iArr = this.f45771d;
        System.arraycopy(iArr, i12, iArr, d10, i11);
        int i13 = this.f45772e - 1;
        this.f45772e = i13;
        this.f45770c[i13] = null;
        return i10;
    }

    @Override
    public final void clear() {
        int i10 = this.f45772e;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                this.f45772e = 0;
                return;
            } else {
                this.f45770c[i11] = null;
                i10 = i11;
            }
        }
    }

    public final Object clone() {
        try {
            C6184Xc0 c6184Xc0 = (C6184Xc0) super.clone();
            c6184Xc0.f45770c = (Object[]) this.f45770c.clone();
            c6184Xc0.f45771d = (int[]) this.f45771d.clone();
            return c6184Xc0;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        return d(obj) != -1;
    }

    public final int d(Object obj) {
        Object[] objArr = this.f45770c;
        int i10 = this.f45772e;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return -1;
            }
            if (objArr[i11] == obj) {
                return i11;
            }
            i10 = i11;
        }
    }

    @Override
    public final I30 i() {
        return new C6127Wc0(this);
    }

    @Override
    public final boolean isEmpty() {
        return this.f45772e == 0;
    }

    @Override
    public final Set o() {
        return new C5609Nd0(this.f45772e, this.f45770c);
    }

    @Override
    public final int size() {
        return this.f45772e;
    }

    @Override
    public final Collection values() {
        return new LH(new FH(this.f45771d, this.f45772e));
    }

    @Override
    public final boolean d(int i10) {
        int i11 = this.f45772e;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return false;
            }
            if (this.f45771d[i12] == i10) {
                return true;
            }
            i11 = i12;
        }
    }

    @Override
    public final int b(int i10, Object obj) {
        int d10 = d(obj);
        if (d10 != -1) {
            int[] iArr = this.f45771d;
            int i11 = iArr[d10];
            iArr[d10] = i10;
            return i11;
        }
        int i12 = this.f45772e;
        if (i12 == this.f45770c.length) {
            Object[] objArr = new Object[i12 == 0 ? 2 : i12 * 2];
            int[] iArr2 = new int[i12 != 0 ? i12 * 2 : 2];
            while (true) {
                int i13 = i12 - 1;
                if (i12 == 0) {
                    break;
                }
                objArr[i13] = this.f45770c[i13];
                iArr2[i13] = this.f45771d[i13];
                i12 = i13;
            }
            this.f45770c = objArr;
            this.f45771d = iArr2;
        }
        Object[] objArr2 = this.f45770c;
        int i14 = this.f45772e;
        objArr2[i14] = obj;
        this.f45771d[i14] = i10;
        this.f45772e = i14 + 1;
        return this.f53665b;
    }
}
