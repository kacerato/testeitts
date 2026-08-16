package Rl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Ii.J;
import Wl.C3187c;
import Xi.x0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class p implements Yk.f {

    public static final String f22940h = "1.3.6.1.4.1.8301.3.1.3.4.2.2";

    public InterfaceC2392y f22941a;

    public SecureRandom f22942b;

    public int f22943c;

    public int f22944d;

    public int f22945e;

    public d f22946f;

    public boolean f22947g;

    private void g(g gVar) {
        this.f22941a = s.a(gVar.d());
        this.f22943c = gVar.i();
        this.f22944d = gVar.h();
        this.f22945e = gVar.l();
    }

    private void h(h hVar) {
        this.f22941a = s.a(hVar.d());
        this.f22943c = hVar.g();
        this.f22944d = hVar.f();
        this.f22945e = hVar.h();
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f22947g = z10;
        if (!z10) {
            g gVar = (g) interfaceC2379k;
            this.f22946f = gVar;
            g(gVar);
        } else {
            if (!(interfaceC2379k instanceof x0)) {
                this.f22942b = Bi.r.h();
                h hVar = (h) interfaceC2379k;
                this.f22946f = hVar;
                h(hVar);
                return;
            }
            x0 x0Var = (x0) interfaceC2379k;
            this.f22942b = x0Var.b();
            h hVar2 = (h) x0Var.a();
            this.f22946f = hVar2;
            h(hVar2);
        }
    }

    @Override
    public byte[] b(byte[] bArr) throws InvalidCipherTextException {
        if (this.f22947g) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i10 = (this.f22943c + 7) >> 3;
        int length = bArr.length - i10;
        byte[][] k10 = C3187c.k(bArr, i10);
        byte[] bArr2 = k10[0];
        byte[] bArr3 = k10[1];
        Wl.g[] a10 = f.a((g) this.f22946f, Wl.g.f(this.f22943c, bArr2));
        byte[] b10 = a10[0].b();
        Wl.g gVar = a10[1];
        Zi.c cVar = new Zi.c(new J());
        cVar.c(b10);
        byte[] bArr4 = new byte[length];
        cVar.nextBytes(bArr4);
        for (int i11 = 0; i11 < length; i11++) {
            bArr4[i11] = (byte) (bArr4[i11] ^ bArr3[i11]);
        }
        this.f22941a.update(bArr4, 0, length);
        byte[] bArr5 = new byte[this.f22941a.f()];
        this.f22941a.c(bArr5, 0);
        if (a.b(this.f22943c, this.f22945e, bArr5).equals(gVar)) {
            return C3187c.k(bArr4, length - (this.f22944d >> 3))[0];
        }
        throw new InvalidCipherTextException("Bad Padding: Invalid ciphertext.");
    }

    @Override
    public byte[] c(byte[] bArr) {
        if (!this.f22947g) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i10 = this.f22944d >> 3;
        byte[] bArr2 = new byte[i10];
        this.f22942b.nextBytes(bArr2);
        Wl.g gVar = new Wl.g(this.f22944d, this.f22942b);
        byte[] b10 = gVar.b();
        byte[] b11 = C3187c.b(bArr, bArr2);
        this.f22941a.update(b11, 0, b11.length);
        byte[] bArr3 = new byte[this.f22941a.f()];
        this.f22941a.c(bArr3, 0);
        byte[] b12 = f.b((h) this.f22946f, gVar, a.b(this.f22943c, this.f22945e, bArr3)).b();
        Zi.c cVar = new Zi.c(new J());
        cVar.c(b10);
        byte[] bArr4 = new byte[bArr.length + i10];
        cVar.nextBytes(bArr4);
        for (int i11 = 0; i11 < bArr.length; i11++) {
            bArr4[i11] = (byte) (bArr4[i11] ^ bArr[i11]);
        }
        for (int i12 = 0; i12 < i10; i12++) {
            int length = bArr.length + i12;
            bArr4[length] = (byte) (bArr4[length] ^ bArr2[i12]);
        }
        return C3187c.b(b12, bArr4);
    }

    public int d(int i10) {
        return 0;
    }

    public int e(int i10) {
        return 0;
    }

    public int f(d dVar) throws IllegalArgumentException {
        if (dVar instanceof h) {
            return ((h) dVar).g();
        }
        if (dVar instanceof g) {
            return ((g) dVar).i();
        }
        throw new IllegalArgumentException("unsupported type");
    }
}
