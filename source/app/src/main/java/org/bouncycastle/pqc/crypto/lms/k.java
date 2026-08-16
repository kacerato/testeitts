package org.bouncycastle.pqc.crypto.lms;

import Bi.InterfaceC2392y;

public class k {

    public final j f102193a;

    public final byte[] f102194b;

    public final int f102195c;

    public final byte[] f102196d;

    public k(j jVar, byte[] bArr, int i10, byte[] bArr2) {
        this.f102193a = jVar;
        this.f102194b = bArr;
        this.f102195c = i10;
        this.f102196d = bArr2;
    }

    public D a() {
        D d10 = new D(this.f102194b, this.f102196d, C14746b.c(this.f102193a));
        d10.i(this.f102195c);
        return d10;
    }

    public byte[] b() {
        return this.f102194b;
    }

    public byte[] c() {
        return this.f102196d;
    }

    public j d() {
        return this.f102193a;
    }

    public int e() {
        return this.f102195c;
    }

    public o f(A a10, byte[][] bArr) {
        byte[] bArr2 = new byte[this.f102193a.d()];
        D a11 = a();
        a11.h(-3);
        a11.a(bArr2, false);
        InterfaceC2392y c10 = C14746b.c(this.f102193a);
        C.b(b(), c10);
        C.e(e(), c10);
        C.d(B.f102143g, c10);
        C.b(bArr2, c10);
        return new o(this, a10, c10, bArr2, bArr);
    }
}
