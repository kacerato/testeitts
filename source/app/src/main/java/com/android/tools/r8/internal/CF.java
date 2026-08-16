package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Set;

public final class CF extends N implements Cloneable {

    public transient int[] f39172b = GH.f40457a;

    public transient Object[] f39173c = AbstractC9527t30.f52512a;

    public int f39174d;

    @Override
    public final boolean a(int i10) {
        return d(i10) != -1;
    }

    @Override
    public final I30 b() {
        return new BF(this);
    }

    @Override
    public final void clear() {
        int i10 = this.f39174d;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                this.f39174d = 0;
                return;
            } else {
                this.f39173c[i11] = null;
                i10 = i11;
            }
        }
    }

    public final Object clone() {
        try {
            CF cf2 = (CF) super.clone();
            cf2.f39172b = (int[]) this.f39172b.clone();
            cf2.f39173c = (Object[]) this.f39173c.clone();
            return cf2;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsValue(Object obj) {
        int i10 = this.f39174d;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            Object obj2 = this.f39173c[i11];
            if (obj2 == null) {
                if (obj == null) {
                    return true;
                }
            } else if (obj2.equals(obj)) {
                return true;
            }
            i10 = i11;
        }
    }

    public final int d(int i10) {
        int[] iArr = this.f39172b;
        int i11 = this.f39174d;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return -1;
            }
            if (iArr[i12] == i10) {
                return i12;
            }
            i11 = i12;
        }
    }

    @Override
    public final Object get(int i10) {
        int[] iArr = this.f39172b;
        int i11 = this.f39174d;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return null;
            }
            if (iArr[i12] == i10) {
                return this.f39173c[i12];
            }
            i11 = i12;
        }
    }

    @Override
    public final boolean isEmpty() {
        return this.f39174d == 0;
    }

    @Override
    public final Set o() {
        return new FH(this.f39172b, this.f39174d);
    }

    @Override
    public final Object remove(int i10) {
        int d10 = d(i10);
        if (d10 == -1) {
            return null;
        }
        Object obj = this.f39173c[d10];
        int i11 = (this.f39174d - d10) - 1;
        int[] iArr = this.f39172b;
        int i12 = d10 + 1;
        System.arraycopy(iArr, i12, iArr, d10, i11);
        Object[] objArr = this.f39173c;
        System.arraycopy(objArr, i12, objArr, d10, i11);
        int i13 = this.f39174d - 1;
        this.f39174d = i13;
        this.f39173c[i13] = null;
        return obj;
    }

    @Override
    public final int size() {
        return this.f39174d;
    }

    @Override
    public final Collection values() {
        return new C10362y30(new C9360s30(this.f39174d, this.f39173c));
    }

    @Override
    public final Object a(int i10, Object obj) {
        int d10 = d(i10);
        if (d10 != -1) {
            Object[] objArr = this.f39173c;
            Object obj2 = objArr[d10];
            objArr[d10] = obj;
            return obj2;
        }
        int i11 = this.f39174d;
        if (i11 == this.f39172b.length) {
            int[] iArr = new int[i11 == 0 ? 2 : i11 * 2];
            Object[] objArr2 = new Object[i11 != 0 ? i11 * 2 : 2];
            while (true) {
                int i12 = i11 - 1;
                if (i11 == 0) {
                    break;
                }
                iArr[i12] = this.f39172b[i12];
                objArr2[i12] = this.f39173c[i12];
                i11 = i12;
            }
            this.f39172b = iArr;
            this.f39173c = objArr2;
        }
        int[] iArr2 = this.f39172b;
        int i13 = this.f39174d;
        iArr2[i13] = i10;
        this.f39173c[i13] = obj;
        this.f39174d = i13 + 1;
        return null;
    }
}
