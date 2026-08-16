package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;

public final class FH extends AbstractC6682c0 implements Serializable {

    public transient int[] f40169b;

    public int f40170c;

    public FH() {
        this.f40169b = GH.f40457a;
    }

    @Override
    public final boolean add(int i10) {
        int i11;
        int i12 = this.f40170c;
        while (true) {
            i11 = i12 - 1;
            if (i12 == 0) {
                i11 = -1;
                break;
            }
            if (this.f40169b[i11] == i10) {
                break;
            }
            i12 = i11;
        }
        if (i11 != -1) {
            return false;
        }
        int i13 = this.f40170c;
        if (i13 == this.f40169b.length) {
            int[] iArr = new int[i13 == 0 ? 2 : i13 * 2];
            while (true) {
                int i14 = i13 - 1;
                if (i13 == 0) {
                    break;
                }
                iArr[i14] = this.f40169b[i14];
                i13 = i14;
            }
            this.f40169b = iArr;
        }
        int[] iArr2 = this.f40169b;
        int i15 = this.f40170c;
        this.f40170c = i15 + 1;
        iArr2[i15] = i10;
        return true;
    }

    @Override
    public final void clear() {
        this.f40170c = 0;
    }

    public final Object clone() {
        try {
            FH fh2 = (FH) super.clone();
            fh2.f40169b = (int[]) this.f40169b.clone();
            return fh2;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override
    public final boolean h(int i10) {
        int i11;
        int i12 = this.f40170c;
        while (true) {
            i11 = i12 - 1;
            if (i12 == 0) {
                i11 = -1;
                break;
            }
            if (this.f40169b[i11] == i10) {
                break;
            }
            i12 = i11;
        }
        return i11 != -1;
    }

    @Override
    public final boolean isEmpty() {
        return this.f40170c == 0;
    }

    @Override
    public final PH iterator() {
        return new EH(this);
    }

    @Override
    public final boolean remove(int i10) {
        int i11;
        int i12 = this.f40170c;
        while (true) {
            i11 = i12 - 1;
            if (i12 == 0) {
                i11 = -1;
                break;
            }
            if (this.f40169b[i11] == i10) {
                break;
            }
            i12 = i11;
        }
        if (i11 == -1) {
            return false;
        }
        int i13 = (this.f40170c - i11) - 1;
        for (int i14 = 0; i14 < i13; i14++) {
            int[] iArr = this.f40169b;
            int i15 = i11 + i14;
            iArr[i15] = iArr[i15 + 1];
        }
        this.f40170c--;
        return true;
    }

    @Override
    public final int size() {
        return this.f40170c;
    }

    @Override
    public final Iterator iterator() {
        return new EH(this);
    }

    public FH(int i10) {
        this.f40169b = new int[i10];
    }

    public FH(InterfaceC8568nI interfaceC8568nI) {
        this.f40169b = new int[interfaceC8568nI.size()];
        a(interfaceC8568nI);
    }

    public FH(Set set) {
        this.f40169b = new int[set.size()];
        addAll(set);
    }

    public FH(int[] iArr, int i10) {
        this.f40169b = iArr;
        this.f40170c = i10;
        if (i10 <= iArr.length) {
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "The provided size (", ") is larger than or equal to the array size (");
        a10.append(iArr.length);
        a10.append(")");
        throw new IllegalArgumentException(a10.toString());
    }
}
