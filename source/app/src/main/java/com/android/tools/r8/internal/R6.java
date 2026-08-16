package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class R6 extends AbstractC7682i {

    public int f43802b = 0;

    public final S6 f43803c;

    public R6(S6 s62) {
        this.f43803c = s62;
    }

    @Override
    public final boolean hasNext() {
        return this.f43802b < this.f43803c.f44089c;
    }

    @Override
    public final boolean q() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        boolean[] zArr = this.f43803c.f44088b;
        int i10 = this.f43802b;
        this.f43802b = i10 + 1;
        return zArr[i10];
    }

    @Override
    public final void remove() {
        S6 s62 = this.f43803c;
        int i10 = s62.f44089c;
        s62.f44089c = i10 - 1;
        int i11 = this.f43802b;
        int i12 = i11 - 1;
        this.f43802b = i12;
        boolean[] zArr = s62.f44088b;
        System.arraycopy(zArr, i11, zArr, i12, i10 - i11);
    }
}
