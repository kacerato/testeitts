package Zi;

import Bi.InterfaceC2374f;
import Bi.r;
import Xi.C3360o0;
import java.security.SecureRandom;

public class p {

    public SecureRandom f31375a;

    public e f31376b;

    public byte[] f31377c;

    public p() {
        this(r.h(), false);
    }

    public o a(InterfaceC2374f interfaceC2374f, C3360o0 c3360o0, boolean z10) {
        if (this.f31377c == null) {
            this.f31377c = new byte[interfaceC2374f.c()];
            org.bouncycastle.util.p.D(System.currentTimeMillis(), this.f31377c, 0);
        }
        interfaceC2374f.a(true, c3360o0);
        return new o(this.f31375a, new n(interfaceC2374f, this.f31377c, this.f31376b.get(interfaceC2374f.c() * 8)), z10);
    }

    public p b(byte[] bArr) {
        this.f31377c = org.bouncycastle.util.a.p(bArr);
        return this;
    }

    public p(e eVar) {
        this.f31375a = null;
        this.f31376b = eVar;
    }

    public p(SecureRandom secureRandom, boolean z10) {
        this.f31375a = secureRandom;
        this.f31376b = new a(secureRandom, z10);
    }
}
