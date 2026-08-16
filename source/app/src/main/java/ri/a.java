package Ri;

import Bi.A;
import Bi.EnumC2383o;
import Bi.InterfaceC2390w;
import Bi.r;
import Xi.G;
import Xi.L;
import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.i;

public class a implements A {

    public final L f22801a;

    public int f22802b;

    public InterfaceC2390w f22803c;

    public boolean f22804d;

    public boolean f22805e;

    public boolean f22806f;

    public a(L l10, int i10, InterfaceC2390w interfaceC2390w) {
        this.f22801a = l10;
        this.f22802b = i10;
        this.f22803c = interfaceC2390w;
        this.f22804d = false;
        this.f22805e = false;
        this.f22806f = false;
    }

    @Override
    public int a() {
        return ((this.f22801a.d().a().w() / 8) * 2) + 1;
    }

    @Override
    public byte[] b(byte[] bArr) {
        L l10 = this.f22801a;
        G d10 = l10.d();
        AbstractC13875e a10 = d10.a();
        BigInteger e10 = d10.e();
        BigInteger c10 = d10.c();
        i l11 = a10.l(bArr);
        if (this.f22804d || this.f22805e) {
            l11 = l11.z(c10);
        }
        BigInteger e11 = l10.e();
        if (this.f22804d) {
            e11 = e11.multiply(d10.d()).mod(e10);
        }
        return b.c(this.f22806f, this.f22803c, this.f22802b, bArr, l11.z(e11).B().f().e());
    }

    public a(L l10, int i10, InterfaceC2390w interfaceC2390w, boolean z10, boolean z11, boolean z12) {
        this.f22801a = l10;
        this.f22802b = i10;
        this.f22803c = interfaceC2390w;
        this.f22804d = z10;
        if (z10) {
            this.f22805e = false;
        } else {
            this.f22805e = z11;
        }
        this.f22806f = z12;
        r.a(new Hi.c("ECIESKem", Hi.b.b(l10.d().a()), l10, EnumC2383o.DECRYPTION));
    }
}
