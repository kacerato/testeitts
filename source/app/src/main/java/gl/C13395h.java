package gl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class C13395h implements InterfaceC2372d {

    public int f90074g;

    public int f90075h;

    public int f90076i;

    public int f90077j;

    public int f90078k;

    public int f90079l;

    public int f90080m;

    public C13394g f90081n;

    public SecureRandom f90082o;

    @Override
    public C2371c a() {
        byte[] bArr = new byte[48];
        this.f90082o.nextBytes(bArr);
        return c(bArr);
    }

    @Override
    public void b(G g10) {
        this.f90081n = (C13394g) g10;
        this.f90082o = g10.a();
        this.f90074g = this.f90081n.c().d();
        this.f90075h = this.f90081n.c().c();
        this.f90076i = this.f90081n.c().a();
        this.f90077j = this.f90081n.c().m();
        this.f90078k = this.f90081n.c().o();
        this.f90079l = this.f90081n.c().n();
        this.f90080m = (this.f90074g + 7) / 8;
    }

    public final C2371c c(byte[] bArr) {
        C13391d b10 = this.f90081n.c().b();
        int i10 = this.f90080m;
        byte[] bArr2 = new byte[i10 + 40];
        byte[] bArr3 = new byte[i10 + 80];
        b10.h(bArr2, bArr3, bArr);
        return new C2371c((C3335c) new C13399l(this.f90081n.c(), bArr2), (C3335c) new C13398k(this.f90081n.c(), bArr3));
    }

    public C2371c d(byte[] bArr) {
        return c(bArr);
    }
}
