package Li;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import java.math.BigInteger;

public class C2780f0 implements InterfaceC2370b {

    public C2782g0 f13888a = new C2782g0();

    public Xi.F0 f13889b;

    public BigInteger f13890c;

    public boolean f13891d;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (interfaceC2379k instanceof Xi.x0) {
            interfaceC2379k = ((Xi.x0) interfaceC2379k).a();
        }
        Xi.D0 d02 = (Xi.D0) interfaceC2379k;
        this.f13888a.f(z10, d02.b());
        this.f13891d = z10;
        this.f13889b = d02.b();
        this.f13890c = d02.a();
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) {
        BigInteger a10 = this.f13888a.a(bArr, i10, i11);
        return this.f13888a.b(this.f13891d ? e(a10) : f(a10));
    }

    @Override
    public int c() {
        return this.f13888a.d();
    }

    @Override
    public int d() {
        return this.f13888a.c();
    }

    public final BigInteger e(BigInteger bigInteger) {
        return bigInteger.multiply(this.f13890c.modPow(this.f13889b.d(), this.f13889b.f())).mod(this.f13889b.f());
    }

    public final BigInteger f(BigInteger bigInteger) {
        BigInteger f10 = this.f13889b.f();
        return bigInteger.multiply(org.bouncycastle.util.b.n(f10, this.f13890c)).mod(f10);
    }
}
