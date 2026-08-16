package Rl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Ii.J;
import Wl.C3187c;
import Wl.u;
import Xi.x0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class n implements Yk.f {

    public static final String f22923h = "1.3.6.1.4.1.8301.3.1.3.4.2.3";

    public static final String f22924i = "SHA1PRNG";

    public static final byte[] f22925j = "a predetermined public constant".getBytes();

    public InterfaceC2392y f22926a;

    public SecureRandom f22927b;

    public d f22928c;

    public int f22929d;

    public int f22930e;

    public int f22931f;

    public boolean f22932g;

    private void e(g gVar) {
        this.f22926a = s.a(gVar.d());
        this.f22929d = gVar.i();
        this.f22930e = gVar.h();
        this.f22931f = gVar.l();
    }

    private void f(h hVar) {
        this.f22926a = s.a(hVar.d());
        this.f22929d = hVar.g();
        this.f22930e = hVar.f();
        this.f22931f = hVar.h();
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f22932g = z10;
        if (!z10) {
            g gVar = (g) interfaceC2379k;
            this.f22928c = gVar;
            e(gVar);
        } else {
            if (!(interfaceC2379k instanceof x0)) {
                this.f22927b = Bi.r.h();
                h hVar = (h) interfaceC2379k;
                this.f22928c = hVar;
                f(hVar);
                return;
            }
            x0 x0Var = (x0) interfaceC2379k;
            this.f22927b = x0Var.b();
            h hVar2 = (h) x0Var.a();
            this.f22928c = hVar2;
            f(hVar2);
        }
    }

    @Override
    public byte[] b(byte[] bArr) throws InvalidCipherTextException {
        byte[] bArr2;
        if (this.f22932g) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i10 = this.f22929d >> 3;
        if (bArr.length < i10) {
            throw new InvalidCipherTextException("Bad Padding: Ciphertext too short.");
        }
        int f10 = this.f22926a.f();
        int i11 = this.f22930e >> 3;
        int bitLength = (u.a(this.f22929d, this.f22931f).bitLength() - 1) >> 3;
        int length = bArr.length - i10;
        if (length > 0) {
            byte[][] k10 = C3187c.k(bArr, length);
            bArr2 = k10[0];
            bArr = k10[1];
        } else {
            bArr2 = new byte[0];
        }
        Wl.g[] a10 = f.a((g) this.f22928c, Wl.g.f(this.f22929d, bArr));
        byte[] b10 = a10[0].b();
        Wl.g gVar = a10[1];
        if (b10.length > i11) {
            b10 = C3187c.m(b10, 0, i11);
        }
        byte[] a11 = a.a(this.f22929d, this.f22931f, gVar);
        if (a11.length < bitLength) {
            byte[] bArr3 = new byte[bitLength];
            System.arraycopy(a11, 0, bArr3, bitLength - a11.length, a11.length);
            a11 = bArr3;
        }
        byte[] b11 = C3187c.b(C3187c.b(bArr2, a11), b10);
        int length2 = b11.length - f10;
        byte[][] k11 = C3187c.k(b11, f10);
        byte[] bArr4 = k11[0];
        byte[] bArr5 = k11[1];
        byte[] bArr6 = new byte[this.f22926a.f()];
        this.f22926a.update(bArr5, 0, bArr5.length);
        this.f22926a.c(bArr6, 0);
        for (int i12 = f10 - 1; i12 >= 0; i12--) {
            bArr6[i12] = (byte) (bArr6[i12] ^ bArr4[i12]);
        }
        Zi.c cVar = new Zi.c(new J());
        cVar.c(bArr6);
        byte[] bArr7 = new byte[length2];
        cVar.nextBytes(bArr7);
        for (int i13 = length2 - 1; i13 >= 0; i13--) {
            bArr7[i13] = (byte) (bArr7[i13] ^ bArr5[i13]);
        }
        byte[] bArr8 = f22925j;
        byte[][] k12 = C3187c.k(bArr7, length2 - bArr8.length);
        byte[] bArr9 = k12[0];
        if (C3187c.g(k12[1], bArr8)) {
            return bArr9;
        }
        throw new InvalidCipherTextException("Bad Padding: invalid ciphertext");
    }

    @Override
    public byte[] c(byte[] bArr) {
        if (!this.f22932g) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int f10 = this.f22926a.f();
        int i10 = this.f22930e >> 3;
        int bitLength = (u.a(this.f22929d, this.f22931f).bitLength() - 1) >> 3;
        byte[] bArr2 = f22925j;
        int length = ((i10 + bitLength) - f10) - bArr2.length;
        if (bArr.length > length) {
            length = bArr.length;
        }
        int length2 = bArr2.length + length;
        int i11 = ((length2 + f10) - i10) - bitLength;
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, length, bArr2.length);
        byte[] bArr4 = new byte[f10];
        this.f22927b.nextBytes(bArr4);
        Zi.c cVar = new Zi.c(new J());
        cVar.c(bArr4);
        byte[] bArr5 = new byte[length2];
        cVar.nextBytes(bArr5);
        for (int i12 = length2 - 1; i12 >= 0; i12--) {
            bArr5[i12] = (byte) (bArr5[i12] ^ bArr3[i12]);
        }
        byte[] bArr6 = new byte[this.f22926a.f()];
        this.f22926a.update(bArr5, 0, length2);
        this.f22926a.c(bArr6, 0);
        for (int i13 = f10 - 1; i13 >= 0; i13--) {
            bArr6[i13] = (byte) (bArr6[i13] ^ bArr4[i13]);
        }
        byte[] b10 = C3187c.b(bArr6, bArr5);
        byte[] bArr7 = new byte[0];
        if (i11 > 0) {
            bArr7 = new byte[i11];
            System.arraycopy(b10, 0, bArr7, 0, i11);
        }
        byte[] bArr8 = new byte[bitLength];
        System.arraycopy(b10, i11, bArr8, 0, bitLength);
        byte[] bArr9 = new byte[i10];
        System.arraycopy(b10, bitLength + i11, bArr9, 0, i10);
        byte[] b11 = f.b((h) this.f22928c, Wl.g.f(this.f22930e, bArr9), a.b(this.f22929d, this.f22931f, bArr8)).b();
        return i11 > 0 ? C3187c.b(bArr7, b11) : b11;
    }

    public int d(d dVar) {
        if (dVar instanceof h) {
            return ((h) dVar).g();
        }
        if (dVar instanceof g) {
            return ((g) dVar).i();
        }
        throw new IllegalArgumentException("unsupported type");
    }
}
