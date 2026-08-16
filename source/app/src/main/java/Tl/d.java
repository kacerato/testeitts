package Tl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public final class d implements InterfaceC2372d {

    public int f25442g;

    public SecureRandom f25443h;

    @Override
    public C2371c a() {
        byte[] c10 = c(this.f25442g);
        byte[] d10 = d(this.f25442g);
        int i10 = this.f25442g;
        if (i10 == 5) {
            i.l(d10, c10, this.f25443h);
        } else {
            if (i10 != 6) {
                throw new IllegalArgumentException("unknown security category: " + this.f25442g);
            }
            j.m(d10, c10, this.f25443h);
        }
        return new C2371c((C3335c) new f(this.f25442g, d10), (C3335c) new e(this.f25442g, c10));
    }

    @Override
    public void b(G g10) {
        c cVar = (c) g10;
        this.f25443h = cVar.a();
        this.f25442g = cVar.c();
    }

    public final byte[] c(int i10) {
        return new byte[g.b(i10)];
    }

    public final byte[] d(int i10) {
        return new byte[g.c(i10)];
    }
}
