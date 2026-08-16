package ql;

import Bi.InterfaceC2379k;
import Xi.C3335c;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;
import ql.C15132j;
import ql.L;

public class M implements Yk.h {

    public I f108303a;

    public J f108304b;

    public H f108305c;

    public C15133k f108306d;

    public C15130h f108307e;

    public boolean f108308f;

    public boolean f108309g;

    private C15138p f(byte[] bArr, C15132j c15132j) {
        if (bArr.length != this.f108305c.h()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        C15133k c15133k = this.f108306d;
        c15133k.l(c15133k.k(this.f108303a.m(), c15132j), this.f108303a.j());
        return this.f108306d.m(bArr, c15132j);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        H e10;
        if (z10) {
            this.f108308f = true;
            this.f108309g = false;
            I i10 = (I) interfaceC2379k;
            this.f108303a = i10;
            e10 = i10.i();
        } else {
            this.f108308f = false;
            J j10 = (J) interfaceC2379k;
            this.f108304b = j10;
            e10 = j10.e();
        }
        this.f108305c = e10;
        C15133k i11 = this.f108305c.i();
        this.f108306d = i11;
        this.f108307e = i11.d();
    }

    @Override
    public byte[] b(byte[] bArr) {
        byte[] byteArray;
        if (bArr == null) {
            throw new NullPointerException("message == null");
        }
        if (!this.f108308f) {
            throw new IllegalStateException("signer not initialized for signature generation");
        }
        I i10 = this.f108303a;
        if (i10 == null) {
            throw new IllegalStateException("signing key no longer usable");
        }
        synchronized (i10) {
            try {
                if (this.f108303a.S0() <= 0) {
                    throw new ExhaustedPrivateKeyException("no usages of private key remaining");
                }
                if (this.f108303a.f().a().isEmpty()) {
                    throw new IllegalStateException("not initialized");
                }
                try {
                    int g10 = this.f108303a.g();
                    this.f108309g = true;
                    long j10 = g10;
                    byte[] d10 = this.f108307e.d(this.f108303a.l(), O.t(j10, 32));
                    byteArray = new L.b(this.f108305c).l(g10).m(d10).h(f(this.f108307e.c(org.bouncycastle.util.a.C(d10, this.f108303a.k(), O.t(j10, this.f108305c.h())), bArr), (C15132j) new C15132j.b().p(g10).e())).f(this.f108303a.f().a()).e().toByteArray();
                } finally {
                    this.f108303a.f().j();
                    this.f108303a.n();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return byteArray;
    }

    @Override
    public C3335c c() {
        synchronized (this.f108303a) {
            try {
                if (this.f108309g) {
                    I i10 = this.f108303a;
                    this.f108303a = null;
                    return i10;
                }
                I i11 = this.f108303a;
                if (i11 != null) {
                    this.f108303a = i11.h();
                }
                return i11;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean d(byte[] bArr, byte[] bArr2) {
        L e10 = new L.b(this.f108305c).n(bArr2).e();
        int d10 = e10.d();
        this.f108306d.l(new byte[this.f108305c.h()], this.f108304b.f());
        long j10 = d10;
        byte[] c10 = this.f108307e.c(org.bouncycastle.util.a.C(e10.e(), this.f108304b.g(), O.t(j10, this.f108305c.h())), bArr);
        int b10 = this.f108305c.b();
        return org.bouncycastle.util.a.I(P.a(this.f108306d, b10, c10, e10, (C15132j) new C15132j.b().p(d10).e(), O.k(j10, b10)).b(), this.f108304b.g());
    }

    public long e() {
        return this.f108303a.S0();
    }
}
