package ql;

import Bi.InterfaceC2379k;
import Xi.C3335c;
import ql.C15121C;
import ql.C15132j;
import ql.K;

public class C15122D implements Yk.h {

    public C15119A f108249a;

    public C15120B f108250b;

    public z f108251c;

    public H f108252d;

    public C15133k f108253e;

    public boolean f108254f;

    public boolean f108255g;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        z e10;
        if (z10) {
            this.f108255g = true;
            this.f108254f = false;
            C15119A c15119a = (C15119A) interfaceC2379k;
            this.f108249a = c15119a;
            e10 = c15119a.i();
        } else {
            this.f108255g = false;
            C15120B c15120b = (C15120B) interfaceC2379k;
            this.f108250b = c15120b;
            e10 = c15120b.e();
        }
        this.f108251c = e10;
        this.f108252d = e10.j();
        this.f108253e = this.f108251c.h();
    }

    @Override
    public byte[] b(byte[] bArr) {
        byte[] byteArray;
        if (bArr == null) {
            throw new NullPointerException("message == null");
        }
        if (!this.f108255g) {
            throw new IllegalStateException("signer not initialized for signature generation");
        }
        C15119A c15119a = this.f108249a;
        if (c15119a == null) {
            throw new IllegalStateException("signing key no longer usable");
        }
        synchronized (c15119a) {
            if (this.f108249a.S0() <= 0) {
                throw new IllegalStateException("no usages of private key remaining");
            }
            if (this.f108249a.f().c()) {
                throw new IllegalStateException("not initialized");
            }
            try {
                C15124b f10 = this.f108249a.f();
                long g10 = this.f108249a.g();
                this.f108251c.a();
                int b10 = this.f108252d.b();
                if (this.f108249a.S0() <= 0) {
                    throw new IllegalStateException("index out of bounds");
                }
                byte[] d10 = this.f108253e.d().d(this.f108249a.l(), O.t(g10, 32));
                byte[] c10 = this.f108253e.d().c(org.bouncycastle.util.a.C(d10, this.f108249a.k(), O.t(g10, this.f108251c.g())), bArr);
                this.f108254f = true;
                C15121C f11 = new C15121C.b(this.f108251c).g(g10).h(d10).f();
                long l10 = O.l(g10, b10);
                int k10 = O.k(g10, b10);
                this.f108253e.l(new byte[this.f108251c.g()], this.f108249a.j());
                C15132j c15132j = (C15132j) new C15132j.b().i(l10).p(k10).e();
                if (f10.a(0) == null || k10 == 0) {
                    f10.d(0, new C15123a(this.f108252d, this.f108249a.j(), this.f108249a.m(), c15132j));
                }
                f11.c().add(new K.a(this.f108252d).h(f(c10, c15132j)).f(f10.a(0).a()).e());
                for (int i10 = 1; i10 < this.f108251c.b(); i10++) {
                    E f12 = f10.a(i10 - 1).f();
                    int k11 = O.k(l10, b10);
                    l10 = O.l(l10, b10);
                    C15132j c15132j2 = (C15132j) new C15132j.b().h(i10).i(l10).p(k11).e();
                    C15138p f13 = f(f12.b(), c15132j2);
                    if (f10.a(i10) != null && !O.p(g10, b10, i10)) {
                        f11.c().add(new K.a(this.f108252d).h(f13).f(f10.a(i10).a()).e());
                    }
                    f10.d(i10, new C15123a(this.f108252d, this.f108249a.j(), this.f108249a.m(), c15132j2));
                    f11.c().add(new K.a(this.f108252d).h(f13).f(f10.a(i10).a()).e());
                }
                byteArray = f11.toByteArray();
                this.f108249a.n();
            } catch (Throwable th2) {
                this.f108249a.n();
                throw th2;
            }
        }
        return byteArray;
    }

    @Override
    public C3335c c() {
        if (this.f108254f) {
            C15119A c15119a = this.f108249a;
            this.f108249a = null;
            return c15119a;
        }
        C15119A c15119a2 = this.f108249a;
        if (c15119a2 != null) {
            this.f108249a = c15119a2.h();
        }
        return c15119a2;
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("message == null");
        }
        if (bArr2 == null) {
            throw new NullPointerException("signature == null");
        }
        if (this.f108250b == null) {
            throw new NullPointerException("publicKey == null");
        }
        C15121C f10 = new C15121C.b(this.f108251c).j(bArr2).f();
        byte[] c10 = this.f108253e.d().c(org.bouncycastle.util.a.C(f10.b(), this.f108250b.g(), O.t(f10.a(), this.f108251c.g())), bArr);
        long a10 = f10.a();
        int b10 = this.f108252d.b();
        long l10 = O.l(a10, b10);
        int k10 = O.k(a10, b10);
        this.f108253e.l(new byte[this.f108251c.g()], this.f108250b.f());
        C15132j c15132j = (C15132j) new C15132j.b().i(l10).p(k10).e();
        E a11 = P.a(this.f108253e, b10, c10, f10.c().get(0), c15132j, k10);
        int i10 = 1;
        while (i10 < this.f108251c.b()) {
            K k11 = f10.c().get(i10);
            int k12 = O.k(l10, b10);
            long l11 = O.l(l10, b10);
            a11 = P.a(this.f108253e, b10, a11.b(), k11, (C15132j) new C15132j.b().h(i10).i(l11).p(k12).e(), k12);
            i10++;
            l10 = l11;
        }
        return org.bouncycastle.util.a.I(a11.b(), this.f108250b.g());
    }

    public long e() {
        return this.f108249a.S0();
    }

    public final C15138p f(byte[] bArr, C15132j c15132j) {
        if (bArr.length != this.f108251c.g()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        C15133k c15133k = this.f108253e;
        c15133k.l(c15133k.k(this.f108249a.m(), c15132j), this.f108249a.j());
        return this.f108253e.m(bArr, c15132j);
    }
}
