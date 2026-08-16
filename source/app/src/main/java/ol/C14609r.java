package ol;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;
import ol.AbstractC14606o;

public class C14609r implements InterfaceC2372d {

    public SecureRandom f99631g;

    public C14611t f99632h;

    private byte[] c(int i10) {
        byte[] bArr = new byte[i10];
        this.f99631g.nextBytes(bArr);
        return bArr;
    }

    @Override
    public C2371c a() {
        C14605n c14605n;
        byte[] c10;
        AbstractC14606o b10 = this.f99632h.b();
        if (b10 instanceof AbstractC14606o.a) {
            byte[] c11 = c(b10.f99603b * 3);
            int i10 = b10.f99603b;
            byte[] bArr = new byte[i10];
            byte[] bArr2 = new byte[i10];
            c10 = new byte[i10];
            System.arraycopy(c11, 0, bArr, 0, i10);
            int i11 = b10.f99603b;
            System.arraycopy(c11, i11, bArr2, 0, i11);
            int i12 = b10.f99603b;
            System.arraycopy(c11, i12 << 1, c10, 0, i12);
            c14605n = new C14605n(bArr, bArr2);
        } else {
            c14605n = new C14605n(c(b10.f99603b), c(b10.f99603b));
            c10 = c(b10.f99603b);
        }
        b10.g(c10);
        C14601j c14601j = new C14601j(c10, new C14594c(b10, c14605n.f99600a, c10).f99581e);
        return new C2371c((C3335c) new C14613v(this.f99632h, c14601j), (C3335c) new C14612u(this.f99632h, c14605n, c14601j));
    }

    @Override
    public void b(G g10) {
        this.f99631g = g10.a();
        this.f99632h = ((C14608q) g10).c();
    }
}
