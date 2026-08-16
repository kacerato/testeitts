package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Iterator;

public final class S6 extends AbstractC8014k implements Serializable {

    public transient boolean[] f44088b;

    public int f44089c;

    public S6(boolean[] zArr, int i10) {
        this.f44088b = zArr;
        this.f44089c = i10;
        if (i10 <= zArr.length) {
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "The provided size (", ") is larger than or equal to the array size (");
        a10.append(zArr.length);
        a10.append(")");
        throw new IllegalArgumentException(a10.toString());
    }

    @Override
    public final boolean a(boolean z10) {
        int i10;
        int i11 = this.f44089c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                i10 = -1;
                break;
            }
            if (this.f44088b[i10] == z10) {
                break;
            }
            i11 = i10;
        }
        if (i10 != -1) {
            return false;
        }
        int i12 = this.f44089c;
        if (i12 == this.f44088b.length) {
            boolean[] zArr = new boolean[i12 == 0 ? 2 : i12 * 2];
            while (true) {
                int i13 = i12 - 1;
                if (i12 == 0) {
                    break;
                }
                zArr[i13] = this.f44088b[i13];
                i12 = i13;
            }
            this.f44088b = zArr;
        }
        boolean[] zArr2 = this.f44088b;
        int i14 = this.f44089c;
        this.f44089c = i14 + 1;
        zArr2[i14] = z10;
        return true;
    }

    @Override
    public final boolean b(boolean z10) {
        int i10;
        int i11 = this.f44089c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                i10 = -1;
                break;
            }
            if (this.f44088b[i10] == z10) {
                break;
            }
            i11 = i10;
        }
        return i10 != -1;
    }

    @Override
    public final void clear() {
        this.f44089c = 0;
    }

    public final Object clone() {
        try {
            S6 s62 = (S6) super.clone();
            s62.f44088b = (boolean[]) this.f44088b.clone();
            return s62;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean d(boolean z10) {
        int i10;
        int i11 = this.f44089c;
        while (true) {
            i10 = i11 - 1;
            if (i11 == 0) {
                i10 = -1;
                break;
            }
            if (this.f44088b[i10] == z10) {
                break;
            }
            i11 = i10;
        }
        if (i10 == -1) {
            return false;
        }
        int i12 = (this.f44089c - i10) - 1;
        for (int i13 = 0; i13 < i12; i13++) {
            boolean[] zArr = this.f44088b;
            int i14 = i10 + i13;
            zArr[i14] = zArr[i14 + 1];
        }
        this.f44089c--;
        return true;
    }

    @Override
    public final boolean isEmpty() {
        return this.f44089c == 0;
    }

    @Override
    public final InterfaceC6370a7 iterator() {
        return new R6(this);
    }

    @Override
    public final int size() {
        return this.f44089c;
    }

    @Override
    public final Iterator iterator() {
        return new R6(this);
    }
}
