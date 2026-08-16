package Rl;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Ii.J;
import Wl.C3187c;
import Xi.x0;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class j implements Yk.f {

    public static final String f22904h = "1.3.6.1.4.1.8301.3.1.3.4.2.1";

    public static final String f22905i = "SHA1PRNG";

    public InterfaceC2392y f22906a;

    public SecureRandom f22907b;

    public int f22908c;

    public int f22909d;

    public int f22910e;

    public d f22911f;

    public boolean f22912g;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        this.f22912g = z10;
        if (!z10) {
            g gVar = (g) interfaceC2379k;
            this.f22911f = gVar;
            e(gVar);
        } else {
            if (!(interfaceC2379k instanceof x0)) {
                this.f22907b = Bi.r.h();
                h hVar = (h) interfaceC2379k;
                this.f22911f = hVar;
                f(hVar);
                return;
            }
            x0 x0Var = (x0) interfaceC2379k;
            this.f22907b = x0Var.b();
            h hVar2 = (h) x0Var.a();
            this.f22911f = hVar2;
            f(hVar2);
        }
    }

    @Override
    public byte[] b(byte[] bArr) throws InvalidCipherTextException {
        if (this.f22912g) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        int i10 = (this.f22908c + 7) >> 3;
        int length = bArr.length - i10;
        byte[][] k10 = C3187c.k(bArr, i10);
        byte[] bArr2 = k10[0];
        byte[] bArr3 = k10[1];
        Wl.g[] a10 = f.a((g) this.f22911f, Wl.g.f(this.f22908c, bArr2));
        byte[] b10 = a10[0].b();
        Wl.g gVar = a10[1];
        Zi.c cVar = new Zi.c(new J());
        cVar.c(b10);
        byte[] bArr4 = new byte[length];
        cVar.nextBytes(bArr4);
        for (int i11 = 0; i11 < length; i11++) {
            bArr4[i11] = (byte) (bArr4[i11] ^ bArr3[i11]);
        }
        byte[] b11 = C3187c.b(b10, bArr4);
        byte[] bArr5 = new byte[this.f22906a.f()];
        this.f22906a.update(b11, 0, b11.length);
        this.f22906a.c(bArr5, 0);
        if (a.b(this.f22908c, this.f22910e, bArr5).equals(gVar)) {
            return bArr4;
        }
        throw new InvalidCipherTextException("Bad Padding: invalid ciphertext");
    }

    @Override
    public byte[] c(byte[] bArr) {
        if (!this.f22912g) {
            throw new IllegalStateException("cipher initialised for decryption");
        }
        Wl.g gVar = new Wl.g(this.f22909d, this.f22907b);
        byte[] b10 = gVar.b();
        byte[] b11 = C3187c.b(b10, bArr);
        this.f22906a.update(b11, 0, b11.length);
        byte[] bArr2 = new byte[this.f22906a.f()];
        this.f22906a.c(bArr2, 0);
        byte[] b12 = f.b((h) this.f22911f, gVar, a.b(this.f22908c, this.f22910e, bArr2)).b();
        Zi.c cVar = new Zi.c(new J());
        cVar.c(b10);
        byte[] bArr3 = new byte[bArr.length];
        cVar.nextBytes(bArr3);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr3[i10] = (byte) (bArr3[i10] ^ bArr[i10]);
        }
        return C3187c.b(b12, bArr3);
    }

    public int d(d dVar) throws IllegalArgumentException {
        if (dVar instanceof h) {
            return ((h) dVar).g();
        }
        if (dVar instanceof g) {
            return ((g) dVar).i();
        }
        throw new IllegalArgumentException("unsupported type");
    }

    public final void e(g gVar) {
        this.f22906a = s.a(gVar.d());
        this.f22908c = gVar.i();
        this.f22910e = gVar.l();
    }

    public final void f(h hVar) {
        this.f22906a = s.a(hVar.d());
        this.f22908c = hVar.g();
        this.f22909d = hVar.f();
        this.f22910e = hVar.h();
    }
}
