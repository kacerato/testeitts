package Li;

import Bi.InterfaceC2370b;
import Bi.InterfaceC2379k;
import java.math.BigInteger;
import java.security.SecureRandom;

public class C2778e0 implements InterfaceC2370b {

    public static final BigInteger f13876d = BigInteger.valueOf(1);

    public C2782g0 f13877a = new C2782g0();

    public Xi.F0 f13878b;

    public SecureRandom f13879c;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        SecureRandom secureRandom;
        if (interfaceC2379k instanceof Xi.x0) {
            Xi.x0 x0Var = (Xi.x0) interfaceC2379k;
            secureRandom = x0Var.b();
            interfaceC2379k = x0Var.a();
        } else {
            secureRandom = null;
        }
        this.f13877a.f(z10, interfaceC2379k);
        Xi.F0 f02 = (Xi.F0) interfaceC2379k;
        this.f13878b = f02;
        this.f13879c = e(f02 instanceof Xi.G0, secureRandom);
    }

    @Override
    public byte[] b(byte[] bArr, int i10, int i11) {
        if (this.f13878b == null) {
            throw new IllegalStateException("RSA engine not initialised");
        }
        return this.f13877a.b(f(this.f13877a.a(bArr, i10, i11)));
    }

    @Override
    public int c() {
        return this.f13877a.d();
    }

    @Override
    public int d() {
        return this.f13877a.c();
    }

    public SecureRandom e(boolean z10, SecureRandom secureRandom) {
        if (z10) {
            return Bi.r.i(secureRandom);
        }
        return null;
    }

    public final BigInteger f(BigInteger bigInteger) {
        Xi.G0 g02;
        BigInteger l10;
        Xi.F0 f02 = this.f13878b;
        if (!(f02 instanceof Xi.G0) || (l10 = (g02 = (Xi.G0) f02).l()) == null) {
            return this.f13877a.g(bigInteger);
        }
        BigInteger f10 = g02.f();
        BigInteger bigInteger2 = f13876d;
        BigInteger g10 = org.bouncycastle.util.b.g(bigInteger2, f10.subtract(bigInteger2), this.f13879c);
        return org.bouncycastle.util.b.n(f10, g10).multiply(this.f13877a.g(g10.modPow(l10, f10).multiply(bigInteger).mod(f10))).mod(f10);
    }
}
