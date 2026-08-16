package Li;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;

public class h0 implements InterfaceC2370b {

    public C2782g0 f13894a;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (this.f13894a == null) {
            this.f13894a = new C2782g0();
        }
        this.f13894a.f(z10, interfaceC2379k);
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) {
        C2782g0 c2782g0 = this.f13894a;
        if (c2782g0 != null) {
            return c2782g0.b(c2782g0.g(c2782g0.a(bArr, i10, i11)));
        }
        throw new IllegalStateException("RSA engine not initialised");
    }

    @Override
    public int c() {
        return this.f13894a.d();
    }

    @Override
    public int d() {
        return this.f13894a.c();
    }
}
