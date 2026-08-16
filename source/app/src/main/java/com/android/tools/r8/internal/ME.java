package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Set;

public final class ME extends K implements Cloneable {

    public transient int[] f42241c;

    public transient int[] f42242d;

    public int f42243e;

    public ME() {
        int[] iArr = GH.f40457a;
        this.f42241c = iArr;
        this.f42242d = iArr;
    }

    @Override
    public final boolean a(int i10) {
        return e(i10) != -1;
    }

    @Override
    public final int b(int i10, int i11) {
        int e10 = e(i10);
        if (e10 != -1) {
            int[] iArr = this.f42242d;
            int i12 = iArr[e10];
            iArr[e10] = i11;
            return i12;
        }
        int i13 = this.f42243e;
        if (i13 == this.f42241c.length) {
            int[] iArr2 = new int[i13 == 0 ? 2 : i13 * 2];
            int[] iArr3 = new int[i13 != 0 ? i13 * 2 : 2];
            while (true) {
                int i14 = i13 - 1;
                if (i13 == 0) {
                    break;
                }
                iArr2[i14] = this.f42241c[i14];
                iArr3[i14] = this.f42242d[i14];
                i13 = i14;
            }
            this.f42241c = iArr2;
            this.f42242d = iArr3;
        }
        int[] iArr4 = this.f42241c;
        int i15 = this.f42243e;
        iArr4[i15] = i10;
        this.f42242d[i15] = i11;
        this.f42243e = i15 + 1;
        return this.f41547b;
    }

    @Override
    public final void clear() {
        this.f42243e = 0;
    }

    public final Object clone() {
        try {
            ME me2 = (ME) super.clone();
            me2.f42241c = (int[]) this.f42241c.clone();
            me2.f42242d = (int[]) this.f42242d.clone();
            return me2;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean d(int i10) {
        int i11 = this.f42243e;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return false;
            }
            if (this.f42242d[i12] == i10) {
                return true;
            }
            i11 = i12;
        }
    }

    public final int e(int i10) {
        int[] iArr = this.f42241c;
        int i11 = this.f42243e;
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
    public final int get(int i10) {
        int[] iArr = this.f42241c;
        int i11 = this.f42243e;
        while (true) {
            int i12 = i11 - 1;
            if (i11 == 0) {
                return this.f41547b;
            }
            if (iArr[i12] == i10) {
                return this.f42242d[i12];
            }
            i11 = i12;
        }
    }

    @Override
    public final I30 h() {
        return new LE(this);
    }

    @Override
    public final boolean isEmpty() {
        return this.f42243e == 0;
    }

    @Override
    public final Set o() {
        return new FH(this.f42241c, this.f42243e);
    }

    @Override
    public final int remove(int i10) {
        int e10 = e(i10);
        if (e10 == -1) {
            return this.f41547b;
        }
        int i11 = this.f42242d[e10];
        int i12 = (this.f42243e - e10) - 1;
        int[] iArr = this.f42241c;
        int i13 = e10 + 1;
        System.arraycopy(iArr, i13, iArr, e10, i12);
        int[] iArr2 = this.f42242d;
        System.arraycopy(iArr2, i13, iArr2, e10, i12);
        this.f42243e--;
        return i11;
    }

    @Override
    public final int size() {
        return this.f42243e;
    }

    @Override
    public final Collection values() {
        return new LH(new FH(this.f42242d, this.f42243e));
    }

    public ME(int i10) {
        this.f42241c = new int[i10];
        this.f42242d = new int[i10];
    }
}
