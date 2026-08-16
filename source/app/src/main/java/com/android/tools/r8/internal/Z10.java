package com.android.tools.r8.internal;

import java.util.NoSuchElementException;

public final class Z10 extends AbstractC6685c1 {

    public int f46143b = -1;

    public int f46144c = 0;

    public final C6356a20 f46145d;

    public Z10(C6356a20 c6356a20) {
        this.f46145d = c6356a20;
    }

    @Override
    public final boolean hasNext() {
        return this.f46144c < this.f46145d.f46403b.f46686e;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        C6523b20 c6523b20 = this.f46145d.f46403b;
        Object[] objArr = c6523b20.f46684c;
        int i10 = this.f46144c;
        this.f46143b = i10;
        Object obj = objArr[i10];
        int[] iArr = c6523b20.f46685d;
        this.f46144c = i10 + 1;
        return new X0(iArr[i10], obj);
    }

    @Override
    public final void remove() {
        if (this.f46143b == -1) {
            throw new IllegalStateException();
        }
        this.f46143b = -1;
        C6523b20 c6523b20 = this.f46145d.f46403b;
        int i10 = c6523b20.f46686e;
        c6523b20.f46686e = i10 - 1;
        int i11 = this.f46144c;
        int i12 = i11 - 1;
        this.f46144c = i12;
        int i13 = i10 - i11;
        Object[] objArr = c6523b20.f46684c;
        System.arraycopy(objArr, i11, objArr, i12, i13);
        int[] iArr = this.f46145d.f46403b.f46685d;
        int i14 = this.f46144c;
        System.arraycopy(iArr, i14 + 1, iArr, i14, i13);
        C6523b20 c6523b202 = this.f46145d.f46403b;
        c6523b202.f46684c[c6523b202.f46686e] = null;
    }
}
