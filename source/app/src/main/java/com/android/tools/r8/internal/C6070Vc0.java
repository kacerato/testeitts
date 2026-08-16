package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class C6070Vc0 extends AbstractC6685c1 {

    public int f45103b = -1;

    public int f45104c = 0;

    public final C6127Wc0 f45105d;

    public C6070Vc0(C6127Wc0 c6127Wc0) {
        this.f45105d = c6127Wc0;
    }

    @Override
    public final boolean hasNext() {
        return this.f45104c < this.f45105d.f45486b.f45772e;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        C6184Xc0 c6184Xc0 = this.f45105d.f45486b;
        Object[] objArr = c6184Xc0.f45770c;
        int i10 = this.f45104c;
        this.f45103b = i10;
        Object obj = objArr[i10];
        int[] iArr = c6184Xc0.f45771d;
        this.f45104c = i10 + 1;
        return new C10021w1(iArr[i10], obj);
    }

    @Override
    public final void remove() {
        if (this.f45103b == -1) {
            throw new IllegalStateException();
        }
        this.f45103b = -1;
        C6184Xc0 c6184Xc0 = this.f45105d.f45486b;
        int i10 = c6184Xc0.f45772e;
        c6184Xc0.f45772e = i10 - 1;
        int i11 = this.f45104c;
        int i12 = i11 - 1;
        this.f45104c = i12;
        int i13 = i10 - i11;
        Object[] objArr = c6184Xc0.f45770c;
        System.arraycopy(objArr, i11, objArr, i12, i13);
        int[] iArr = this.f45105d.f45486b.f45771d;
        int i14 = this.f45104c;
        System.arraycopy(iArr, i14 + 1, iArr, i14, i13);
        C6184Xc0 c6184Xc02 = this.f45105d.f45486b;
        c6184Xc02.f45770c[c6184Xc02.f45772e] = null;
    }
}
