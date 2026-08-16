package ml;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class C14328f implements InterfaceC2372d {

    public C14327e f97501g;

    public int f97502h;

    public SecureRandom f97503i;

    private C2371c c() {
        C14324b a10 = this.f97501g.c().a();
        byte[] bArr = new byte[a10.f()];
        byte[] bArr2 = new byte[a10.g()];
        a10.d(bArr2, bArr, this.f97503i);
        return new C2371c((C3335c) new j(this.f97501g.c(), bArr2), (C3335c) new i(this.f97501g.c(), bArr));
    }

    private void d(G g10) {
        this.f97501g = (C14327e) g10;
        this.f97503i = g10.a();
        this.f97502h = this.f97501g.c().b();
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
