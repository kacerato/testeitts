package bl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class C3902c implements InterfaceC2372d {

    public C3904e f33469g;

    public SecureRandom f33470h;

    private C2371c c() {
        byte[][] b10 = this.f33469g.a(this.f33470h).b();
        return new C2371c((C3335c) new g(this.f33469g, b10[0], b10[6]), (C3335c) new C3905f(this.f33469g, b10[0], b10[1], b10[2], b10[3], b10[4], b10[5], b10[6]));
    }

    private void d(G g10) {
        this.f33469g = ((C3901b) g10).c();
        this.f33470h = g10.a();
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
