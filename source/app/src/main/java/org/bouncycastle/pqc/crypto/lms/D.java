package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2392y;

public class D {

    public final byte[] f102144a;

    public final byte[] f102145b;

    public final InterfaceC2392y f102146c;

    public int f102147d;

    public int f102148e;

    public D(byte[] bArr, byte[] bArr2, InterfaceC2392y interfaceC2392y) {
        this.f102144a = bArr;
        this.f102145b = bArr2;
        this.f102146c = interfaceC2392y;
    }

    public void a(byte[] bArr, boolean z10) {
        b(bArr, z10, 0);
    }

    public void b(byte[] bArr, boolean z10, int i10) {
        c(bArr, i10);
        if (z10) {
            this.f102148e++;
        }
    }

    public byte[] c(byte[] bArr, int i10) {
        if (bArr.length - i10 < this.f102146c.f()) {
            throw new IllegalArgumentException("target length is less than digest size.");
        }
        InterfaceC2392y interfaceC2392y = this.f102146c;
        byte[] bArr2 = this.f102144a;
        interfaceC2392y.update(bArr2, 0, bArr2.length);
        this.f102146c.update((byte) (this.f102147d >>> 24));
        this.f102146c.update((byte) (this.f102147d >>> 16));
        this.f102146c.update((byte) (this.f102147d >>> 8));
        this.f102146c.update((byte) this.f102147d);
        this.f102146c.update((byte) (this.f102148e >>> 8));
        this.f102146c.update((byte) this.f102148e);
        this.f102146c.update((byte) -1);
        InterfaceC2392y interfaceC2392y2 = this.f102146c;
        byte[] bArr3 = this.f102145b;
        interfaceC2392y2.update(bArr3, 0, bArr3.length);
        this.f102146c.c(bArr, i10);
        return bArr;
    }

    public byte[] d() {
        return this.f102144a;
    }

    public int e() {
        return this.f102148e;
    }

    public byte[] f() {
        return this.f102145b;
    }

    public int g() {
        return this.f102147d;
    }

    public void h(int i10) {
        this.f102148e = i10;
    }

    public void i(int i10) {
        this.f102147d = i10;
    }
}
