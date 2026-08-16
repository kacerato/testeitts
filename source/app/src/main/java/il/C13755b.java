package il;

import Bi.B;
import Bi.P;
import Ii.N;
import Xi.C3335c;
import am.AbstractC3681e;
import java.security.SecureRandom;
import pl.C15017e;

public class C13755b implements B {

    public final SecureRandom f92398a;

    public C13755b(SecureRandom secureRandom) {
        this.f92398a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        i iVar = (i) c3335c;
        bm.i iVar2 = iVar.d().f92412c;
        j jVar = new j(iVar2);
        f fVar = new f(iVar2);
        int h10 = iVar2.h();
        byte[] bArr = new byte[h10];
        byte[] bArr2 = new byte[iVar2.r()];
        this.f92398a.nextBytes(bArr2);
        m f10 = jVar.f(bArr2);
        AbstractC3681e d10 = f10.d();
        AbstractC3681e c10 = f10.c();
        byte[] u10 = d10.u(iVar2.h());
        System.arraycopy(u10, 0, bArr, 0, u10.length);
        byte[] u11 = c10.u(h10 - iVar2.l());
        System.arraycopy(u11, 0, bArr, iVar2.l(), u11.length);
        N n10 = new N(256);
        n10.update(bArr, 0, h10);
        byte[] bArr3 = new byte[n10.f()];
        n10.c(bArr3, 0);
        d10.z();
        byte[] e10 = fVar.e(d10, c10, iVar.f92414d);
        byte[] X10 = org.bouncycastle.util.a.X(bArr3, 0, iVar2.t());
        org.bouncycastle.util.a.n(bArr3);
        return new C15017e(X10, e10);
    }
}
