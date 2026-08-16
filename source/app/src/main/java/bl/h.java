package bl;

import Bi.InterfaceC2379k;
import Xi.x0;
import java.security.SecureRandom;

public class h implements Yk.g {

    public C3905f f33487a;

    public g f33488b;

    public SecureRandom f33489c;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        SecureRandom secureRandom;
        if (!z10) {
            this.f33488b = (g) interfaceC2379k;
            return;
        }
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            this.f33487a = (C3905f) x0Var.a();
            secureRandom = x0Var.b();
        } else {
            this.f33487a = (C3905f) interfaceC2379k;
            secureRandom = null;
        }
        this.f33489c = secureRandom;
    }

    @Override
    public byte[] b(byte[] bArr) {
        C3900a a10 = this.f33487a.d().a(this.f33489c);
        int length = bArr.length;
        C3905f c3905f = this.f33487a;
        return a10.w(bArr, length, c3905f.f33478d, c3905f.f33479e, c3905f.f33480f, c3905f.f33483i, c3905f.f33481g, c3905f.f33482h);
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        C3900a a10 = this.f33488b.d().a(this.f33489c);
        int length = bArr2.length;
        g gVar = this.f33488b;
        return a10.x(bArr, bArr2, length, gVar.f33485d, gVar.f33486e);
    }
}
