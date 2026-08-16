package org.bouncycastle.jce.provider;

import Bi.InterfaceC2390w;
import Bi.InterfaceC2391x;
import Bi.InterfaceC2392y;
import Xi.C3358n0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class C14723d implements InterfaceC2390w {

    public InterfaceC2392y f101750a;

    public byte[] f101751b;

    public byte[] f101752c;

    public C14723d(InterfaceC2392y interfaceC2392y) {
        this.f101750a = interfaceC2392y;
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        if (bArr.length - i11 < i10) {
            throw new OutputLengthException("output buffer too small");
        }
        long j10 = i11 * 8;
        if (j10 > this.f101750a.f() * 17179869184L) {
            throw new IllegalArgumentException("Output length too large");
        }
        int f10 = (int) (j10 / this.f101750a.f());
        int f11 = this.f101750a.f();
        byte[] bArr2 = new byte[f11];
        for (int i12 = 1; i12 <= f10; i12++) {
            InterfaceC2392y interfaceC2392y = this.f101750a;
            byte[] bArr3 = this.f101751b;
            interfaceC2392y.update(bArr3, 0, bArr3.length);
            this.f101750a.update((byte) (i12 & 255));
            this.f101750a.update((byte) ((i12 >> 8) & 255));
            this.f101750a.update((byte) ((i12 >> 16) & 255));
            this.f101750a.update((byte) ((i12 >> 24) & 255));
            InterfaceC2392y interfaceC2392y2 = this.f101750a;
            byte[] bArr4 = this.f101752c;
            interfaceC2392y2.update(bArr4, 0, bArr4.length);
            this.f101750a.c(bArr2, 0);
            int i13 = i11 - i10;
            if (i13 > f11) {
                System.arraycopy(bArr2, 0, bArr, i10, f11);
                i10 += f11;
            } else {
                System.arraycopy(bArr2, 0, bArr, i10, i13);
            }
        }
        this.f101750a.reset();
        return i11;
    }

    public InterfaceC2392y b() {
        return this.f101750a;
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        if (!(interfaceC2391x instanceof C3358n0)) {
            throw new IllegalArgumentException("KDF parameters required for generator");
        }
        C3358n0 c3358n0 = (C3358n0) interfaceC2391x;
        this.f101751b = c3358n0.b();
        this.f101752c = c3358n0.a();
    }
}
