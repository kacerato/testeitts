package al;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class h implements InterfaceC2372d {

    public g f32363g;

    public SecureRandom f32364h;

    private C2371c c() {
        C3674d a10 = this.f32363g.c().a();
        byte[] bArr = new byte[a10.r()];
        byte[] bArr2 = new byte[a10.s()];
        a10.w(bArr2, bArr, this.f32364h);
        return new C2371c((C3335c) new l(this.f32363g.c(), bArr2), (C3335c) new k(this.f32363g.c(), bArr));
    }

    private void d(G g10) {
        this.f32363g = (g) g10;
        this.f32364h = g10.a();
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
