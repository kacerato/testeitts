package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class W10 extends AbstractC6685c1 {

    public int f45260b = -1;

    public int f45261c = 0;

    public final X10 f45262d;

    public W10(X10 x10) {
        this.f45262d = x10;
    }

    @Override
    public final boolean hasNext() {
        return this.f45261c < this.f45262d.f45600b.f45901d;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Y10 y10 = this.f45262d.f45600b;
        Object[] objArr = y10.f45899b;
        int i10 = this.f45261c;
        this.f45260b = i10;
        Object obj = objArr[i10];
        boolean[] zArr = y10.f45900c;
        this.f45261c = i10 + 1;
        return new W0(obj, zArr[i10]);
    }

    @Override
    public final void remove() {
        if (this.f45260b == -1) {
            throw new IllegalStateException();
        }
        this.f45260b = -1;
        Y10 y10 = this.f45262d.f45600b;
        int i10 = y10.f45901d;
        y10.f45901d = i10 - 1;
        int i11 = this.f45261c;
        int i12 = i11 - 1;
        this.f45261c = i12;
        int i13 = i10 - i11;
        Object[] objArr = y10.f45899b;
        System.arraycopy(objArr, i11, objArr, i12, i13);
        boolean[] zArr = this.f45262d.f45600b.f45900c;
        int i14 = this.f45261c;
        System.arraycopy(zArr, i14 + 1, zArr, i14, i13);
        Y10 y102 = this.f45262d.f45600b;
        y102.f45899b[y102.f45901d] = null;
    }
}
