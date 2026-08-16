package com.android.tools.r8.internal;

import java.util.Iterator;

public final class W7 implements Iterator {

    public final int f45307b;

    public final byte[] f45308c;

    public int f45309d = 0;

    public W7(byte[] bArr) {
        this.f45307b = bArr.length;
        this.f45308c = bArr;
    }

    public final byte a() {
        byte[] bArr = this.f45308c;
        int i10 = this.f45309d;
        this.f45309d = i10 + 1;
        return bArr[i10];
    }

    @Override
    public final boolean hasNext() {
        return this.f45309d < this.f45307b;
    }

    @Override
    public final Object next() {
        return Byte.valueOf(a());
    }
}
