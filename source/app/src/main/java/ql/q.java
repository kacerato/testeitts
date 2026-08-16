package ql;

import Bi.C2371c;
import java.security.SecureRandom;
import java.text.ParseException;
import ql.I;
import ql.J;

public class q {

    public final H f108384a;

    public C15133k f108385b;

    public SecureRandom f108386c;

    public I f108387d;

    public J f108388e;

    public q(H h10, SecureRandom secureRandom) {
        if (h10 == null) {
            throw new NullPointerException("params == null");
        }
        this.f108384a = h10;
        this.f108385b = h10.i();
        this.f108386c = secureRandom;
    }

    public I a() {
        return this.f108387d;
    }

    public J b() {
        return this.f108388e;
    }

    public void c() {
        t tVar = new t();
        tVar.b(new s(e(), this.f108386c));
        C2371c a10 = tVar.a();
        this.f108387d = (I) a10.a();
        this.f108388e = (J) a10.b();
        this.f108385b.l(new byte[this.f108384a.h()], this.f108387d.j());
    }

    public int d() {
        return this.f108387d.g();
    }

    public H e() {
        return this.f108384a;
    }

    public I f() {
        return this.f108387d;
    }

    public byte[] g() {
        return this.f108387d.j();
    }

    public byte[] h() {
        return this.f108387d.k();
    }

    public C15133k i() {
        return this.f108385b;
    }

    public void j(I i10, J j10) {
        if (!org.bouncycastle.util.a.g(i10.k(), j10.g())) {
            throw new IllegalStateException("root of private key and public key do not match");
        }
        if (!org.bouncycastle.util.a.g(i10.j(), j10.f())) {
            throw new IllegalStateException("public seed of private key and public key do not match");
        }
        this.f108387d = i10;
        this.f108388e = j10;
        this.f108385b.l(new byte[this.f108384a.h()], this.f108387d.j());
    }

    public void k(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("privateKey == null");
        }
        if (bArr2 == null) {
            throw new NullPointerException("publicKey == null");
        }
        I j10 = new I.b(this.f108384a).n(bArr).j();
        J e10 = new J.b(this.f108384a).f(bArr2).e();
        if (!org.bouncycastle.util.a.g(j10.k(), e10.g())) {
            throw new IllegalStateException("root of private key and public key do not match");
        }
        if (!org.bouncycastle.util.a.g(j10.j(), e10.f())) {
            throw new IllegalStateException("public seed of private key and public key do not match");
        }
        this.f108387d = j10;
        this.f108388e = e10;
        this.f108385b.l(new byte[this.f108384a.h()], this.f108387d.j());
    }

    public void l(int i10) {
        this.f108387d = new I.b(this.f108384a).r(this.f108387d.m()).q(this.f108387d.l()).o(this.f108387d.j()).p(this.f108387d.k()).k(this.f108387d.f()).j();
    }

    public void m(byte[] bArr) {
        this.f108387d = new I.b(this.f108384a).r(this.f108387d.m()).q(this.f108387d.l()).o(bArr).p(h()).k(this.f108387d.f()).j();
        this.f108388e = new J.b(this.f108384a).h(h()).g(bArr).e();
        this.f108385b.l(new byte[this.f108384a.h()], bArr);
    }

    public void n(byte[] bArr) {
        this.f108387d = new I.b(this.f108384a).r(this.f108387d.m()).q(this.f108387d.l()).o(g()).p(bArr).k(this.f108387d.f()).j();
        this.f108388e = new J.b(this.f108384a).h(bArr).g(g()).e();
    }

    public byte[] o(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("message == null");
        }
        M m10 = new M();
        m10.a(true, this.f108387d);
        byte[] b10 = m10.b(bArr);
        I i10 = (I) m10.c();
        this.f108387d = i10;
        j(i10, this.f108388e);
        return b10;
    }

    public boolean p(byte[] bArr, byte[] bArr2, byte[] bArr3) throws ParseException {
        if (bArr == null) {
            throw new NullPointerException("message == null");
        }
        if (bArr2 == null) {
            throw new NullPointerException("signature == null");
        }
        if (bArr3 == null) {
            throw new NullPointerException("publicKey == null");
        }
        M m10 = new M();
        m10.a(false, new J.b(e()).f(bArr3).e());
        return m10.d(bArr, bArr2);
    }

    public C15138p q(byte[] bArr, C15132j c15132j) {
        if (bArr.length != this.f108384a.h()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        }
        if (c15132j == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        C15133k c15133k = this.f108385b;
        c15133k.l(c15133k.k(this.f108387d.m(), c15132j), g());
        return this.f108385b.m(bArr, c15132j);
    }
}
