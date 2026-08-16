package com.android.tools.r8.internal;

import java.util.Set;

public final class GG extends T implements Cloneable {

    public transient int[] f40454b;

    public transient Object[] f40455c;

    public int f40456d;

    public GG() {
        this.f40454b = GH.f40457a;
        this.f40455c = AbstractC9527t30.f52512a;
    }

    @Override
    public final boolean a(int i10) {
        return d(i10) != -1;
    }

    @Override
    public final I30 c() {
        return new FG(this);
    }

    @Override
    public final void clear() {
        int i10 = this.f40456d;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                this.f40456d = 0;
                return;
            } else {
                this.f40455c[i11] = null;
                i10 = i11;
            }
        }
    }

    public final Object clone() {
        try {
            GG gg2 = (GG) super.clone();
            gg2.f40454b = (int[]) this.f40454b.clone();
            gg2.f40455c = (Object[]) this.f40455c.clone();
            return gg2;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean containsValue(Object obj) {
        int i10 = this.f40456d;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return false;
            }
            if (this.f40455c[i11] == obj) {
                return true;
            }
            i10 = i11;
        }
    }

    public final int d(int i10) {
        int[] iArr = this.f40454b;
        int i11 = this.f40456d;
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
        int[] iArr = this.f40454b;
        int i11 = this.f40456d;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return null;
            }
            if (iArr[i12] == i10) {
                return this.f40455c[i12];
            }
            i11 = i12;
        }
    }

    @Override
    public final boolean isEmpty() {
        return this.f40456d == 0;
    }

    @Override
    public final InterfaceC8568nI o() {
        return new FH(this.f40454b, this.f40456d);
    }

    @Override
    public final Object remove(int i10) {
        int d10 = d(i10);
        if (d10 == -1) {
            return null;
        }
        Object obj = this.f40455c[d10];
        int i11 = (this.f40456d - d10) - 1;
        int[] iArr = this.f40454b;
        int i12 = d10 + 1;
        System.arraycopy(iArr, i12, iArr, d10, i11);
        Object[] objArr = this.f40455c;
        System.arraycopy(objArr, i12, objArr, d10, i11);
        int i13 = this.f40456d - 1;
        this.f40456d = i13;
        this.f40455c[i13] = null;
        return obj;
    }

    @Override
    public final int size() {
        return this.f40456d;
    }

    @Override
    public final InterfaceC5667Od0 values() {
        return new C5783Qd0(new C5609Nd0(this.f40456d, this.f40455c));
    }

    @Override
    public final Object a(int i10, Object obj) {
        int d10 = d(i10);
        if (d10 != -1) {
            Object[] objArr = this.f40455c;
            Object obj2 = objArr[d10];
            objArr[d10] = obj;
            return obj2;
        }
        int i11 = this.f40456d;
        if (i11 == this.f40454b.length) {
            int[] iArr = new int[i11 == 0 ? 2 : i11 * 2];
            Object[] objArr2 = new Object[i11 != 0 ? i11 * 2 : 2];
            while (true) {
                int i12 = i11 - 1;
                if (i11 == 0) {
                    break;
                }
                iArr[i12] = this.f40454b[i12];
                objArr2[i12] = this.f40455c[i12];
                i11 = i12;
            }
            this.f40454b = iArr;
            this.f40455c = objArr2;
        }
        int[] iArr2 = this.f40454b;
        int i13 = this.f40456d;
        iArr2[i13] = i10;
        this.f40455c[i13] = obj;
        this.f40456d = i13 + 1;
        return null;
    }

    @Override
    public final Set o() {
        return new FH(this.f40454b, this.f40456d);
    }

    public GG(int i10) {
        this.f40454b = new int[i10];
        this.f40455c = new Object[i10];
    }
}
