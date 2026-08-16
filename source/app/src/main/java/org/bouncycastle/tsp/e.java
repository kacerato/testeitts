package org.bouncycastle.tsp;

import Qk.C3017j;
import ci.C4197h;
import ci.C4200k;
import hi.C13479C;
import hi.C13480D;
import hi.C13486b;
import java.io.IOException;
import java.math.BigInteger;
import oh.C14512e;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;

public class e {

    public static final C3017j f102268d = new C3017j();

    public C14549x f102269a;

    public C14512e f102270b;

    public C13480D f102271c = new C13480D();

    public void a(String str, boolean z10, InterfaceC14516g interfaceC14516g) throws IOException {
        b(str, z10, interfaceC14516g.r().getEncoded());
    }

    public void b(String str, boolean z10, byte[] bArr) {
        this.f102271c.d(new C14549x(str), z10, bArr);
    }

    public void c(C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws TSPIOException {
        c.a(this.f102271c, c14549x, z10, interfaceC14516g);
    }

    public void d(C14549x c14549x, boolean z10, byte[] bArr) {
        this.f102271c.d(c14549x, z10, bArr);
    }

    public d e(C13486b c13486b, byte[] bArr) {
        return f(c13486b, bArr, null);
    }

    public d f(C13486b c13486b, byte[] bArr, BigInteger bigInteger) {
        if (c13486b == null) {
            throw new IllegalArgumentException("digest algorithm not specified");
        }
        C4197h c4197h = new C4197h(c13486b, bArr);
        C13479C e10 = !this.f102271c.h() ? this.f102271c.e() : null;
        C14549x c14549x = this.f102269a;
        return bigInteger != null ? new d(new C4200k(c4197h, c14549x, new C14539s(bigInteger), this.f102270b, e10)) : new d(new C4200k(c4197h, c14549x, null, this.f102270b, e10));
    }

    public d g(String str, byte[] bArr) {
        return h(str, bArr, null);
    }

    public d h(String str, byte[] bArr, BigInteger bigInteger) {
        if (str == null) {
            throw new IllegalArgumentException("No digest algorithm specified");
        }
        C4197h c4197h = new C4197h(f102268d.b(new C14549x(str)), bArr);
        C13479C e10 = !this.f102271c.h() ? this.f102271c.e() : null;
        C14549x c14549x = this.f102269a;
        return bigInteger != null ? new d(new C4200k(c4197h, c14549x, new C14539s(bigInteger), this.f102270b, e10)) : new d(new C4200k(c4197h, c14549x, null, this.f102270b, e10));
    }

    public d i(C14549x c14549x, byte[] bArr) {
        return e(f102268d.b(c14549x), bArr);
    }

    public d j(C14549x c14549x, byte[] bArr, BigInteger bigInteger) {
        return f(f102268d.b(c14549x), bArr, bigInteger);
    }

    public void k(boolean z10) {
        this.f102270b = C14512e.I(z10);
    }

    public void l(String str) {
        this.f102269a = new C14549x(str);
    }

    public void m(C14549x c14549x) {
        this.f102269a = c14549x;
    }
}
