package cl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class g implements InterfaceC2372d {

    public i f35005g;

    public SecureRandom f35006h;

    private C2371c c() {
        C4219b a10 = this.f35005g.a();
        a10.v(this.f35006h);
        byte[][] b10 = a10.b();
        return new C2371c((C3335c) new k(this.f35005g, b10[0], b10[1]), (C3335c) new j(this.f35005g, b10[2], b10[3], b10[4], b10[0], b10[1]));
    }

    private void d(G g10) {
        this.f35005g = ((C4223f) g10).c();
        this.f35006h = g10.a();
    }

    @Override
    public C2371c a() {
        return c();
    }

    @Override
    public void b(G g10) {
        d(g10);
    }
}
