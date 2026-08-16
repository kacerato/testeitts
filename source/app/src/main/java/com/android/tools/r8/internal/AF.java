package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class AF extends AbstractC6685c1 {

    public int f38575b = -1;

    public int f38576c = 0;

    public final BF f38577d;

    public AF(BF bf2) {
        this.f38577d = bf2;
    }

    @Override
    public final boolean hasNext() {
        return this.f38576c < this.f38577d.f38862b.f39174d;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        CF cf2 = this.f38577d.f38862b;
        int[] iArr = cf2.f39172b;
        int i10 = this.f38576c;
        this.f38575b = i10;
        int i11 = iArr[i10];
        Object[] objArr = cf2.f39173c;
        this.f38576c = i10 + 1;
        return new M(i11, objArr[i10]);
    }

    @Override
    public final void remove() {
        if (this.f38575b == -1) {
            throw new IllegalStateException();
        }
        this.f38575b = -1;
        CF cf2 = this.f38577d.f38862b;
        int i10 = cf2.f39174d;
        cf2.f39174d = i10 - 1;
        int i11 = this.f38576c;
        int i12 = i11 - 1;
        this.f38576c = i12;
        int i13 = i10 - i11;
        int[] iArr = cf2.f39172b;
        System.arraycopy(iArr, i11, iArr, i12, i13);
        Object[] objArr = this.f38577d.f38862b.f39173c;
        int i14 = this.f38576c;
        System.arraycopy(objArr, i14 + 1, objArr, i14, i13);
        CF cf3 = this.f38577d.f38862b;
        cf3.f39173c[cf3.f39174d] = null;
    }
}
