package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class EG extends AbstractC6685c1 {

    public int f39807b = -1;

    public int f39808c = 0;

    public final FG f39809d;

    public EG(FG fg2) {
        this.f39809d = fg2;
    }

    @Override
    public final boolean hasNext() {
        return this.f39808c < this.f39809d.f40163b.f40456d;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        GG gg2 = this.f39809d.f40163b;
        int[] iArr = gg2.f40454b;
        int i10 = this.f39808c;
        this.f39807b = i10;
        int i11 = iArr[i10];
        Object[] objArr = gg2.f40455c;
        this.f39808c = i10 + 1;
        return new S(i11, objArr[i10]);
    }

    @Override
    public final void remove() {
        if (this.f39807b == -1) {
            throw new IllegalStateException();
        }
        this.f39807b = -1;
        GG gg2 = this.f39809d.f40163b;
        int i10 = gg2.f40456d;
        gg2.f40456d = i10 - 1;
        int i11 = this.f39808c;
        int i12 = i11 - 1;
        this.f39808c = i12;
        int i13 = i10 - i11;
        int[] iArr = gg2.f40454b;
        System.arraycopy(iArr, i11, iArr, i12, i13);
        Object[] objArr = this.f39809d.f40163b.f40455c;
        int i14 = this.f39808c;
        System.arraycopy(objArr, i14 + 1, objArr, i14, i13);
        GG gg3 = this.f39809d.f40163b;
        gg3.f40455c[gg3.f40456d] = null;
    }
}
