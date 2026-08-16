package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public final class C6523b20 extends Y0 implements Cloneable {

    public transient Object[] f46684c;

    public transient int[] f46685d;

    public int f46686e;

    public C6523b20(Map map) {
        int size = map.size();
        this.f46684c = new Object[size];
        this.f46685d = new int[size];
        putAll(map);
    }

    @Override
    public final int b(Object obj) {
        int i10;
        Object[] objArr = this.f46684c;
        int i11 = this.f46686e;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                return this.f45889b;
            }
            Object obj2 = objArr[i10];
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
        return this.f46685d[i10];
    }

    @Override
    public final int c(Object obj) {
        int d10 = d(obj);
        if (d10 == -1) {
            return this.f45889b;
        }
        int i10 = this.f46685d[d10];
        int i11 = (this.f46686e - d10) - 1;
        Object[] objArr = this.f46684c;
        int i12 = d10 + 1;
        System.arraycopy(objArr, i12, objArr, d10, i11);
        int[] iArr = this.f46685d;
        System.arraycopy(iArr, i12, iArr, d10, i11);
        int i13 = this.f46686e - 1;
        this.f46686e = i13;
        this.f46684c[i13] = null;
        return i10;
    }

    @Override
    public final void clear() {
        int i10 = this.f46686e;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                this.f46686e = 0;
                return;
            } else {
                this.f46684c[i11] = null;
                i10 = i11;
            }
        }
    }

    public final Object clone() {
        try {
            C6523b20 c6523b20 = (C6523b20) super.clone();
            c6523b20.f46684c = (Object[]) this.f46684c.clone();
            c6523b20.f46685d = (int[]) this.f46685d.clone();
            return c6523b20;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        return d(obj) != -1;
    }

    public final int d(Object obj) {
        int i10;
        Object[] objArr = this.f46684c;
        int i11 = this.f46686e;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                return -1;
            }
            Object obj2 = objArr[i10];
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
    public final I30 i() {
        return new C6356a20(this);
    }

    @Override
    public final boolean isEmpty() {
        return this.f46686e == 0;
    }

    @Override
    public final Set o() {
        return new C9360s30(this.f46686e, this.f46684c);
    }

    @Override
    public final int size() {
        return this.f46686e;
    }

    @Override
    public final Collection values() {
        return new LH(new FH(this.f46685d, this.f46686e));
    }

    @Override
    public final boolean d(int i10) {
        int i11 = this.f46686e;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return false;
            }
            if (this.f46685d[i12] == i10) {
                return true;
            }
            i11 = i12;
        }
    }

    @Override
    public final int b(int i10, Object obj) {
        int d10 = d(obj);
        if (d10 != -1) {
            int[] iArr = this.f46685d;
            int i11 = iArr[d10];
            iArr[d10] = i10;
            return i11;
        }
        int i12 = this.f46686e;
        if (i12 == this.f46684c.length) {
            Object[] objArr = new Object[i12 == 0 ? 2 : i12 * 2];
            int[] iArr2 = new int[i12 != 0 ? i12 * 2 : 2];
            while (true) {
                int i13 = i12 - 1;
                if (i12 == 0) {
                    break;
                }
                objArr[i13] = this.f46684c[i13];
                iArr2[i13] = this.f46685d[i13];
                i12 = i13;
            }
            this.f46684c = objArr;
            this.f46685d = iArr2;
        }
        Object[] objArr2 = this.f46684c;
        int i14 = this.f46686e;
        objArr2[i14] = obj;
        this.f46685d[i14] = i10;
        this.f46686e = i14 + 1;
        return this.f45889b;
    }
}
