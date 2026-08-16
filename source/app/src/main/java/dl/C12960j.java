package dl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class C12960j implements InterfaceC2372d {

    public C12959i f84796g;

    public SecureRandom f84797h;

    public C12962l f84798i;

    public int f84799j;

    public int f84800k;

    public int f84801l;

    public int f84802m;

    @Override
    public C2371c a() {
        byte[][] b10 = this.f84798i.b(new byte[this.f84801l], 0, new byte[this.f84802m], 0);
        C12963m c10 = this.f84796g.c();
        return new C2371c((C3335c) new C12965o(c10, b10[0]), (C3335c) new C12964n(c10, b10[1], b10[2], b10[3], b10[0]));
    }

    @Override
    public void b(G g10) {
        this.f84796g = (C12959i) g10;
        this.f84797h = g10.a();
        C12959i c12959i = (C12959i) g10;
        this.f84799j = c12959i.c().a();
        int c10 = c12959i.c().c();
        this.f84800k = c10;
        this.f84798i = new C12962l(this.f84799j, c10, this.f84797h);
        int i10 = 1 << this.f84799j;
        int i11 = i10 == 1024 ? 5 : (i10 == 256 || i10 == 512) ? 6 : (i10 == 64 || i10 == 128) ? 7 : 8;
        this.f84801l = ((i10 * 14) / 8) + 1;
        this.f84802m = (((i11 * 2) * i10) / 8) + 1 + i10;
    }
}
