package Ri;

import Bi.B;
import Bi.EnumC2383o;
import Bi.InterfaceC2390w;
import Bi.P;
import Bi.r;
import Xi.C3335c;
import Xi.C3358n0;
import Xi.G;
import Xi.J;
import Xi.M;
import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13875e;
import jk.h;
import jk.i;
import jk.k;

public class b implements B {

    public static final BigInteger f22807g = BigInteger.valueOf(1);

    public InterfaceC2390w f22808a;

    public SecureRandom f22809b;

    public final int f22810c;

    public boolean f22811d;

    public boolean f22812e;

    public boolean f22813f;

    public b(int i10, InterfaceC2390w interfaceC2390w, SecureRandom secureRandom) {
        this.f22810c = i10;
        this.f22808a = interfaceC2390w;
        this.f22809b = secureRandom;
        this.f22811d = false;
        this.f22812e = false;
        this.f22813f = false;
    }

    public static byte[] c(boolean z10, InterfaceC2390w interfaceC2390w, int i10, byte[] bArr, byte[] bArr2) {
        if (!z10) {
            byte[] B10 = org.bouncycastle.util.a.B(bArr, bArr2);
            org.bouncycastle.util.a.e0(bArr2, (byte) 0);
            bArr2 = B10;
        }
        try {
            interfaceC2390w.c(new C3358n0(bArr2, null));
            byte[] bArr3 = new byte[i10];
            interfaceC2390w.a(bArr3, 0, i10);
            return bArr3;
        } finally {
            org.bouncycastle.util.a.e0(bArr2, (byte) 0);
        }
    }

    @Override
    public P a(C3335c c3335c) {
        if (!(c3335c instanceof J)) {
            throw new IllegalArgumentException("EC key required");
        }
        M m10 = (M) c3335c;
        r.a(new Hi.c("ECIESKem", Hi.b.b(m10.d().a()), c3335c, EnumC2383o.ENCRYPTION));
        G d10 = m10.d();
        AbstractC13875e a10 = d10.a();
        BigInteger e10 = d10.e();
        BigInteger c10 = d10.c();
        BigInteger g10 = org.bouncycastle.util.b.g(f22807g, e10, this.f22809b);
        i[] iVarArr = {b().a(d10.b(), g10), m10.e().z(this.f22812e ? g10.multiply(c10).mod(e10) : g10)};
        a10.E(iVarArr);
        i iVar = iVarArr[0];
        i iVar2 = iVarArr[1];
        byte[] l10 = iVar.l(false);
        byte[] bArr = new byte[l10.length];
        System.arraycopy(l10, 0, bArr, 0, l10.length);
        return new g(c(this.f22813f, this.f22808a, this.f22810c, l10, iVar2.f().e()), bArr);
    }

    public final h b() {
        return new k();
    }

    public b(int i10, InterfaceC2390w interfaceC2390w, SecureRandom secureRandom, boolean z10, boolean z11, boolean z12) {
        this.f22808a = interfaceC2390w;
        this.f22809b = secureRandom;
        this.f22810c = i10;
        this.f22811d = z10;
        if (z10) {
            this.f22812e = false;
        } else {
            this.f22812e = z11;
        }
        this.f22813f = z12;
    }
}
