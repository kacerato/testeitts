package com.android.tools.r8.internal;

import java.util.RandomAccess;

public final class C7516h0 extends AbstractC7683i0 implements RandomAccess {

    public final AbstractC7683i0 f48408b;

    public final int f48409c;

    public final int f48410d;

    public C7516h0(AbstractC7683i0 abstractC7683i0, int i10, int i11) {
        this.f48408b = abstractC7683i0;
        this.f48409c = i10;
        int a10 = abstractC7683i0.a();
        if (i10 < 0 || i11 > a10) {
            throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11 + ", size: " + a10);
        }
        if (i10 <= i11) {
            this.f48410d = i11 - i10;
            return;
        }
        throw new IllegalArgumentException("fromIndex: " + i10 + " > toIndex: " + i11);
    }

    @Override
    public final int a() {
        return this.f48410d;
    }

    @Override
    public final Object get(int i10) {
        int i11 = this.f48410d;
        if (i10 >= 0 && i10 < i11) {
            return this.f48408b.get(this.f48409c + i10);
        }
        throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
    }
}
