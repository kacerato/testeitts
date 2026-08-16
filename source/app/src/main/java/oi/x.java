package Oi;

import Bi.InterfaceC2390w;
import Bi.InterfaceC2391x;
import Bi.InterfaceC2392y;
import Xi.C3344g0;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;

public class x implements InterfaceC2390w {

    public Si.k f20253a;

    public int f20254b;

    public byte[] f20255c;

    public byte[] f20256d;

    public int f20257e;

    public x(InterfaceC2392y interfaceC2392y) {
        this.f20253a = new Si.k(interfaceC2392y);
        this.f20254b = interfaceC2392y.f();
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        int i12 = this.f20257e;
        int i13 = i12 + i11;
        int i14 = this.f20254b;
        if (i13 > i14 * 255) {
            throw new DataLengthException("HKDF may only be used for 255 * HashLen bytes of output");
        }
        if (i12 % i14 == 0) {
            d();
        }
        int i15 = this.f20257e;
        int i16 = this.f20254b;
        int i17 = i15 % i16;
        int min = Math.min(i16 - (i15 % i16), i11);
        System.arraycopy(this.f20256d, i17, bArr, i10, min);
        this.f20257e += min;
        int i18 = i11 - min;
        while (true) {
            i10 += min;
            if (i18 <= 0) {
                return i11;
            }
            d();
            min = Math.min(this.f20254b, i18);
            System.arraycopy(this.f20256d, 0, bArr, i10, min);
            this.f20257e += min;
            i18 -= min;
        }
    }

    public InterfaceC2392y b() {
        return this.f20253a.f();
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        Si.k kVar;
        C3360o0 c3360o0;
        if (!(interfaceC2391x instanceof C3344g0)) {
            throw new IllegalArgumentException("HKDF parameters required for HKDFBytesGenerator");
        }
        C3344g0 c3344g0 = (C3344g0) interfaceC2391x;
        if (c3344g0.e()) {
            kVar = this.f20253a;
            c3360o0 = new C3360o0(c3344g0.b());
        } else {
            kVar = this.f20253a;
            c3360o0 = new C3360o0(f(c3344g0.d(), c3344g0.b()));
        }
        kVar.a(c3360o0);
        this.f20255c = c3344g0.c();
        this.f20257e = 0;
        this.f20256d = new byte[this.f20254b];
    }

    public final void d() throws DataLengthException {
        int i10 = this.f20257e;
        int i11 = this.f20254b;
        int i12 = (i10 / i11) + 1;
        if (i12 >= 256) {
            throw new DataLengthException("HKDF cannot generate more than 255 blocks of HashLen size");
        }
        if (i10 != 0) {
            this.f20253a.update(this.f20256d, 0, i11);
        }
        Si.k kVar = this.f20253a;
        byte[] bArr = this.f20255c;
        kVar.update(bArr, 0, bArr.length);
        this.f20253a.update((byte) i12);
        this.f20253a.c(this.f20256d, 0);
    }

    public byte[] f(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            this.f20253a.a(new C3360o0(new byte[this.f20254b]));
        } else {
            this.f20253a.a(new C3360o0(bArr));
        }
        this.f20253a.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.f20254b];
        this.f20253a.c(bArr3, 0);
        return bArr3;
    }
}
