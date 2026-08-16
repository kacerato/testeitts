package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class KE extends AbstractC6685c1 {

    public int f41619b = -1;

    public int f41620c = 0;

    public final LE f41621d;

    public KE(LE le2) {
        this.f41621d = le2;
    }

    @Override
    public final boolean hasNext() {
        return this.f41620c < this.f41621d.f41924b.f42243e;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        ME me2 = this.f41621d.f41924b;
        int[] iArr = me2.f42241c;
        int i10 = this.f41620c;
        this.f41619b = i10;
        int i11 = iArr[i10];
        int[] iArr2 = me2.f42242d;
        this.f41620c = i10 + 1;
        return new J(i11, iArr2[i10]);
    }

    @Override
    public final void remove() {
        if (this.f41619b == -1) {
            throw new IllegalStateException();
        }
        this.f41619b = -1;
        ME me2 = this.f41621d.f41924b;
        int i10 = me2.f42243e;
        me2.f42243e = i10 - 1;
        int i11 = this.f41620c;
        int i12 = i11 - 1;
        this.f41620c = i12;
        int i13 = i10 - i11;
        int[] iArr = me2.f42241c;
        System.arraycopy(iArr, i11, iArr, i12, i13);
        int[] iArr2 = this.f41621d.f41924b.f42242d;
        int i14 = this.f41620c;
        System.arraycopy(iArr2, i14 + 1, iArr2, i14, i13);
    }
}
