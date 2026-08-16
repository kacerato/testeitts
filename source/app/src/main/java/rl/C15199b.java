package rl;

import Bi.B;
import Bi.C2371c;
import Bi.P;
import Ci.n;
import Ii.N;
import Xi.C3335c;
import Xi.M0;
import Xi.O0;
import cl.C4222e;
import java.security.SecureRandom;
import org.bouncycastle.util.w;
import pl.C15017e;

public class C15199b implements B {

    public final SecureRandom f109085a;

    public C15199b(SecureRandom secureRandom) {
        this.f109085a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        C15204g c15204g = (C15204g) c3335c;
        P a10 = new C4222e(this.f109085a).a(c15204g.d());
        n nVar = new n();
        byte[] f10 = a10.f();
        int length = f10.length + nVar.c();
        byte[] bArr = new byte[length];
        System.arraycopy(f10, 0, bArr, 0, f10.length);
        org.bouncycastle.util.a.n(f10);
        Oi.P p10 = new Oi.P();
        p10.b(new M0(this.f109085a));
        C2371c a11 = p10.a();
        nVar.a(a11.a());
        nVar.b(c15204g.e(), bArr, f10.length);
        O0 o02 = (O0) a11.b();
        N n10 = new N(256);
        n10.update(w.j("\\.//^\\"), 0, 6);
        n10.update(bArr, 0, length);
        n10.update(o02.getEncoded(), 0, 32);
        n10.update(c15204g.e().getEncoded(), 0, 32);
        byte[] bArr2 = new byte[32];
        n10.c(bArr2, 0);
        return new C15017e(bArr2, org.bouncycastle.util.a.B(a10.e(), o02.getEncoded()));
    }
}
