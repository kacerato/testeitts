package Ri;

import Bi.E;
import Bi.EnumC2383o;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2390w;
import Bi.P;
import Bi.r;
import Xi.C3360o0;
import Xi.F0;
import java.security.SecureRandom;

public class f implements E {

    public InterfaceC2390w f22828a;

    public SecureRandom f22829b;

    public F0 f22830c;

    public f(InterfaceC2390w interfaceC2390w, SecureRandom secureRandom) {
        this.f22828a = interfaceC2390w;
        this.f22829b = secureRandom;
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof F0)) {
            throw new IllegalArgumentException("RSA key required");
        }
        F0 f02 = (F0) interfaceC2379k;
        this.f22830c = f02;
        r.a(new Hi.c("RSAKem", Hi.b.a(f02.f()), interfaceC2379k, this.f22830c.c() ? EnumC2383o.DECRYPTION : EnumC2383o.ENCRYPTION));
    }

    @Override
    public InterfaceC2379k b(byte[] bArr, int i10, int i11, int i12) throws IllegalArgumentException {
        if (this.f22830c.c()) {
            return new C3360o0(new d(this.f22830c, i12, this.f22828a).b(org.bouncycastle.util.a.X(bArr, i10, i11 + i10)));
        }
        throw new IllegalArgumentException("Private key required for decryption");
    }

    @Override
    public InterfaceC2379k c(byte[] bArr, int i10, int i11) throws IllegalArgumentException {
        if (this.f22830c.c()) {
            throw new IllegalArgumentException("Public key required for encryption");
        }
        P a10 = new e(i11, this.f22828a, this.f22829b).a(this.f22830c);
        byte[] e10 = a10.e();
        System.arraycopy(e10, 0, bArr, i10, e10.length);
        return new C3360o0(a10.f());
    }

    public InterfaceC2379k d(byte[] bArr, int i10) {
        return b(bArr, 0, bArr.length, i10);
    }

    public InterfaceC2379k e(byte[] bArr, int i10) {
        return c(bArr, 0, i10);
    }
}
