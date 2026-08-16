package Ci;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Bi.r;
import Xi.A0;
import Xi.G;
import Xi.L;
import Xi.M;
import java.math.BigInteger;
import jk.C13873c;

public class j {

    public final InterfaceC2392y f4435a;

    public L f4436b;

    public BigInteger f4437c;

    public j(InterfaceC2392y interfaceC2392y) {
        this.f4435a = interfaceC2392y;
    }

    public byte[] a(InterfaceC2379k interfaceC2379k) {
        M m10 = (M) interfaceC2379k;
        G d10 = this.f4436b.d();
        if (!d10.equals(m10.d())) {
            throw new IllegalStateException("ECVKO public key has wrong domain parameters");
        }
        BigInteger mod = d10.c().multiply(this.f4437c).multiply(this.f4436b.e()).mod(d10.e());
        jk.i a10 = C13873c.a(d10.a(), m10.e());
        if (a10.v()) {
            throw new IllegalStateException("Infinity is not a valid public key for ECVKO");
        }
        jk.i B10 = a10.z(mod).B();
        if (B10.v()) {
            throw new IllegalStateException("Infinity is not a valid agreement value for ECVKO");
        }
        byte[] l10 = B10.l(false);
        int length = l10.length;
        int i10 = length / 2;
        int i11 = i10 * 2;
        int i12 = length - i11;
        org.bouncycastle.util.a.P0(l10, i12, i10);
        org.bouncycastle.util.a.P0(l10, length - i10, i10);
        byte[] bArr = new byte[this.f4435a.f()];
        this.f4435a.update(l10, i12, i11);
        this.f4435a.c(bArr, 0);
        return bArr;
    }

    public int b() {
        return this.f4435a.f();
    }

    public int c() {
        return (this.f4436b.d().a().w() + 7) / 8;
    }

    public void d(InterfaceC2379k interfaceC2379k) {
        A0 a02 = (A0) interfaceC2379k;
        this.f4436b = (L) a02.a();
        this.f4437c = new BigInteger(1, org.bouncycastle.util.a.N0(a02.b()));
        r.a(m.b("ECVKO", this.f4436b));
    }
}
