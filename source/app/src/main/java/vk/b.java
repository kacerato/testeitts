package Vk;

import Xh.v;
import hi.g0;
import li.C14146h;
import org.bouncycastle.cms.C14675q0;
import org.bouncycastle.cms.F0;

public class b {

    public final v f27152a;

    public final C14146h[] f27153b;

    public b(v vVar, C14146h c14146h) {
        this(vVar, new C14146h[]{c14146h});
    }

    public C14146h a() {
        return this.f27153b[0];
    }

    public C14146h[] b() {
        C14146h[] c14146hArr = this.f27153b;
        int length = c14146hArr.length;
        C14146h[] c14146hArr2 = new C14146h[length];
        System.arraycopy(c14146hArr, 0, c14146hArr2, 0, length);
        return c14146hArr2;
    }

    public v c() {
        return this.f27152a;
    }

    public F0 d() {
        return new C14675q0(this.f27153b[0].e(), this.f27153b[0].i(), e());
    }

    public final byte[] e() {
        g0 u10 = g0.u(this.f27153b[0].d());
        if (u10 == null) {
            return null;
        }
        return u10.x();
    }

    public b(v vVar, C14146h[] c14146hArr) {
        this.f27152a = vVar;
        C14146h[] c14146hArr2 = new C14146h[c14146hArr.length];
        this.f27153b = c14146hArr2;
        System.arraycopy(c14146hArr, 0, c14146hArr2, 0, c14146hArr.length);
    }
}
