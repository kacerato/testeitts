package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class EH extends X {

    public int f39810b = 0;

    public final FH f39811c;

    public EH(FH fh2) {
        this.f39811c = fh2;
    }

    @Override
    public final boolean hasNext() {
        return this.f39810b < this.f39811c.f40170c;
    }

    @Override
    public final int r() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.f39811c.f40169b;
        int i10 = this.f39810b;
        this.f39810b = i10 + 1;
        return iArr[i10];
    }

    @Override
    public final void remove() {
        FH fh2 = this.f39811c;
        int i10 = fh2.f40170c;
        fh2.f40170c = i10 - 1;
        int i11 = this.f39810b;
        int i12 = i11 - 1;
        this.f39810b = i12;
        int[] iArr = fh2.f40169b;
        System.arraycopy(iArr, i11, iArr, i12, i10 - i11);
    }
}
