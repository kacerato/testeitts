package Zk;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class e implements InterfaceC2372d {

    public SecureRandom f31481g;

    public int f31482h;

    public int f31483i;

    public int f31484j;

    public int f31485k;

    public d f31486l;

    private C2371c c() {
        a a10 = this.f31486l.c().a();
        int i10 = this.f31485k;
        byte[] bArr = new byte[i10];
        byte[] bArr2 = new byte[i10];
        byte[] bArr3 = new byte[i10];
        byte[] bArr4 = new byte[this.f31484j];
        a10.n(bArr, bArr2, bArr4, bArr3, this.f31481g);
        return new C2371c((C3335c) new i(this.f31486l.c(), bArr3), (C3335c) new h(this.f31486l.c(), bArr, bArr2, bArr4));
    }

    @Override
    public C2371c a() {
        return c();
    }

    @Override
    public void b(G g10) {
        this.f31486l = (d) g10;
        this.f31481g = g10.a();
        this.f31482h = this.f31486l.c().f();
        int b10 = this.f31486l.c().b();
        this.f31483i = b10;
        this.f31484j = b10 / 8;
        this.f31485k = (this.f31482h + 7) / 8;
    }
}
