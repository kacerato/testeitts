package Ri;

import Bi.E;
import Bi.EnumC2383o;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2390w;
import Bi.P;
import Bi.r;
import Xi.C3360o0;
import Xi.J;
import Xi.L;
import Xi.M;
import java.security.SecureRandom;

public class c implements E {

    public InterfaceC2390w f22814a;

    public SecureRandom f22815b;

    public J f22816c;

    public boolean f22817d;

    public boolean f22818e;

    public boolean f22819f;

    public c(InterfaceC2390w interfaceC2390w, SecureRandom secureRandom) {
        this.f22814a = interfaceC2390w;
        this.f22815b = secureRandom;
        this.f22817d = false;
        this.f22818e = false;
        this.f22819f = false;
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof J)) {
            throw new IllegalArgumentException("EC key required");
        }
        J j10 = (J) interfaceC2379k;
        this.f22816c = j10;
        r.a(new Hi.c("ECIESKem", Hi.b.b(j10.d().a()), interfaceC2379k, EnumC2383o.ANY));
    }

    @Override
    public InterfaceC2379k b(byte[] bArr, int i10, int i11, int i12) throws IllegalArgumentException {
        J j10 = this.f22816c;
        if (j10 instanceof L) {
            return new C3360o0(new a((L) j10, i12, this.f22814a, this.f22817d, this.f22818e, this.f22819f).b(org.bouncycastle.util.a.X(bArr, i10, i11 + i10)));
        }
        throw new IllegalArgumentException("Private key required for encryption");
    }

    @Override
    public InterfaceC2379k c(byte[] bArr, int i10, int i11) throws IllegalArgumentException {
        if (!(this.f22816c instanceof M)) {
            throw new IllegalArgumentException("Public key required for encryption");
        }
        P a10 = new b(i11, this.f22814a, this.f22815b, this.f22817d, this.f22818e, this.f22819f).a(this.f22816c);
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

    public c(InterfaceC2390w interfaceC2390w, SecureRandom secureRandom, boolean z10, boolean z11, boolean z12) {
        this.f22814a = interfaceC2390w;
        this.f22815b = secureRandom;
        this.f22817d = z10;
        if (z10) {
            this.f22818e = false;
        } else {
            this.f22818e = z11;
        }
        this.f22819f = z12;
    }
}
