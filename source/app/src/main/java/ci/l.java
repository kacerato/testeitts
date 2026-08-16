package Ci;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.r;
import Ii.S;
import Xi.G;
import Xi.H0;
import Xi.I0;
import Xi.L;
import Xi.v0;
import java.math.BigInteger;
import jk.C13873c;

public class l {

    public final InterfaceC2392y f4440a;

    public byte[] f4441b;

    public L f4442c;

    public jk.i f4443d;

    public jk.i f4444e;

    public G f4445f;

    public int f4446g;

    public L f4447h;

    public boolean f4448i;

    public l() {
        this(new S());
    }

    public final byte[] a(InterfaceC2392y interfaceC2392y, jk.i iVar, byte[] bArr) {
        interfaceC2392y.update((byte) 2);
        c(interfaceC2392y, iVar.g());
        interfaceC2392y.update(bArr, 0, bArr.length);
        return i();
    }

    public final byte[] b(InterfaceC2392y interfaceC2392y, jk.i iVar, byte[] bArr) {
        interfaceC2392y.update((byte) 3);
        c(interfaceC2392y, iVar.g());
        interfaceC2392y.update(bArr, 0, bArr.length);
        return i();
    }

    public final void c(InterfaceC2392y interfaceC2392y, jk.f fVar) {
        byte[] e10 = fVar.e();
        interfaceC2392y.update(e10, 0, e10.length);
    }

    public final void d(InterfaceC2392y interfaceC2392y, byte[] bArr) {
        int length = bArr.length * 8;
        interfaceC2392y.update((byte) (length >>> 8));
        interfaceC2392y.update((byte) length);
        interfaceC2392y.update(bArr, 0, bArr.length);
    }

    public final byte[] e(InterfaceC2392y interfaceC2392y, jk.i iVar, byte[] bArr, byte[] bArr2, jk.i iVar2, jk.i iVar3) {
        c(interfaceC2392y, iVar.f());
        interfaceC2392y.update(bArr, 0, bArr.length);
        interfaceC2392y.update(bArr2, 0, bArr2.length);
        c(interfaceC2392y, iVar2.f());
        c(interfaceC2392y, iVar2.g());
        c(interfaceC2392y, iVar3.f());
        c(interfaceC2392y, iVar3.g());
        return i();
    }

    public byte[] f(int i10, InterfaceC2379k interfaceC2379k) {
        I0 i02;
        byte[] bArr;
        if (interfaceC2379k instanceof v0) {
            v0 v0Var = (v0) interfaceC2379k;
            i02 = (I0) v0Var.b();
            bArr = v0Var.a();
        } else {
            i02 = (I0) interfaceC2379k;
            bArr = new byte[0];
        }
        byte[] j10 = j(this.f4440a, this.f4441b, this.f4443d);
        byte[] j11 = j(this.f4440a, bArr, i02.b().e());
        jk.i h10 = h(i02);
        return this.f4448i ? l(h10, j10, j11, i10) : l(h10, j11, j10, i10);
    }

    public byte[][] g(int i10, byte[] bArr, InterfaceC2379k interfaceC2379k) {
        I0 i02;
        byte[] bArr2;
        if (interfaceC2379k instanceof v0) {
            v0 v0Var = (v0) interfaceC2379k;
            i02 = (I0) v0Var.b();
            bArr2 = v0Var.a();
        } else {
            i02 = (I0) interfaceC2379k;
            bArr2 = new byte[0];
        }
        if (this.f4448i && bArr == null) {
            throw new IllegalArgumentException("if initiating, confirmationTag must be set");
        }
        byte[] j10 = j(this.f4440a, this.f4441b, this.f4443d);
        byte[] j11 = j(this.f4440a, bArr2, i02.b().e());
        jk.i h10 = h(i02);
        if (!this.f4448i) {
            byte[] l10 = l(h10, j11, j10, i10);
            byte[] e10 = e(this.f4440a, h10, j11, j10, i02.a().e(), this.f4444e);
            return new byte[][]{l10, a(this.f4440a, h10, e10), b(this.f4440a, h10, e10)};
        }
        byte[] l11 = l(h10, j10, j11, i10);
        byte[] e11 = e(this.f4440a, h10, j10, j11, this.f4444e, i02.a().e());
        if (org.bouncycastle.util.a.I(a(this.f4440a, h10, e11), bArr)) {
            return new byte[][]{l11, b(this.f4440a, h10, e11)};
        }
        throw new IllegalStateException("confirmation tag mismatch");
    }

    public final jk.i h(I0 i02) {
        G d10 = this.f4442c.d();
        jk.i a10 = C13873c.a(d10.a(), i02.b().e());
        jk.i a11 = C13873c.a(d10.a(), i02.a().e());
        BigInteger m10 = m(this.f4444e.f().v());
        BigInteger m11 = m(a11.f().v());
        BigInteger mod = this.f4445f.c().multiply(this.f4442c.e().add(m10.multiply(this.f4447h.e()))).mod(this.f4445f.e());
        return C13873c.v(a10, mod, a11, mod.multiply(m11).mod(this.f4445f.e())).B();
    }

    public final byte[] i() {
        byte[] bArr = new byte[this.f4440a.f()];
        this.f4440a.c(bArr, 0);
        return bArr;
    }

    public final byte[] j(InterfaceC2392y interfaceC2392y, byte[] bArr, jk.i iVar) {
        d(interfaceC2392y, bArr);
        c(interfaceC2392y, this.f4445f.a().p());
        c(interfaceC2392y, this.f4445f.a().r());
        c(interfaceC2392y, this.f4445f.b().f());
        c(interfaceC2392y, this.f4445f.b().g());
        c(interfaceC2392y, iVar.f());
        c(interfaceC2392y, iVar.g());
        return i();
    }

    public void k(InterfaceC2379k interfaceC2379k) {
        H0 h02;
        if (interfaceC2379k instanceof v0) {
            v0 v0Var = (v0) interfaceC2379k;
            h02 = (H0) v0Var.b();
            this.f4441b = v0Var.a();
        } else {
            h02 = (H0) interfaceC2379k;
            this.f4441b = new byte[0];
        }
        this.f4448i = h02.e();
        this.f4442c = h02.c();
        this.f4447h = h02.a();
        this.f4445f = this.f4442c.d();
        this.f4443d = h02.d();
        this.f4444e = h02.b();
        this.f4446g = (this.f4445f.a().w() / 2) - 1;
        r.a(m.b("SM2KE", this.f4442c));
    }

    public final byte[] l(jk.i iVar, byte[] bArr, byte[] bArr2, int i10) {
        org.bouncycastle.util.n nVar;
        org.bouncycastle.util.n nVar2;
        int f10 = this.f4440a.f();
        byte[] bArr3 = new byte[Math.max(4, f10)];
        int i11 = (i10 + 7) / 8;
        byte[] bArr4 = new byte[i11];
        InterfaceC2392y interfaceC2392y = this.f4440a;
        if (interfaceC2392y instanceof org.bouncycastle.util.n) {
            c(interfaceC2392y, iVar.f());
            c(this.f4440a, iVar.g());
            this.f4440a.update(bArr, 0, bArr.length);
            this.f4440a.update(bArr2, 0, bArr2.length);
            nVar = (org.bouncycastle.util.n) this.f4440a;
            nVar2 = nVar.copy();
        } else {
            nVar = null;
            nVar2 = null;
        }
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            if (nVar != null) {
                nVar.j(nVar2);
            } else {
                c(this.f4440a, iVar.f());
                c(this.f4440a, iVar.g());
                this.f4440a.update(bArr, 0, bArr.length);
                this.f4440a.update(bArr2, 0, bArr2.length);
            }
            i13++;
            org.bouncycastle.util.p.h(i13, bArr3, 0);
            this.f4440a.update(bArr3, 0, 4);
            this.f4440a.c(bArr3, 0);
            int min = Math.min(f10, i11 - i12);
            System.arraycopy(bArr3, 0, bArr4, i12, min);
            i12 += min;
        }
        return bArr4;
    }

    public final BigInteger m(BigInteger bigInteger) {
        return bigInteger.and(BigInteger.valueOf(1L).shiftLeft(this.f4446g).subtract(BigInteger.valueOf(1L))).setBit(this.f4446g);
    }

    public l(InterfaceC2392y interfaceC2392y) {
        this.f4440a = interfaceC2392y;
    }
}
