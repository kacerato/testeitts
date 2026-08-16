package ql;

import Bi.C2371c;
import java.security.SecureRandom;
import java.text.ParseException;
import ql.C15119A;
import ql.C15120B;

public final class v {

    public z f108405a;

    public H f108406b;

    public SecureRandom f108407c;

    public C15119A f108408d;

    public C15120B f108409e;

    public v(z zVar, SecureRandom secureRandom) {
        if (zVar == null) {
            throw new NullPointerException("params == null");
        }
        this.f108405a = zVar;
        this.f108406b = zVar.j();
        this.f108407c = secureRandom;
        this.f108408d = new C15119A.b(zVar).k();
        this.f108409e = new C15120B.b(zVar).e();
    }

    public byte[] a() {
        return this.f108408d.toByteArray();
    }

    public byte[] b() {
        return this.f108409e.toByteArray();
    }

    public void c() {
        x xVar = new x();
        xVar.b(new w(d(), this.f108407c));
        C2371c a10 = xVar.a();
        this.f108408d = (C15119A) a10.a();
        C15120B c15120b = (C15120B) a10.b();
        this.f108409e = c15120b;
        g(this.f108408d, c15120b);
    }

    public z d() {
        return this.f108405a;
    }

    public byte[] e() {
        return this.f108408d.j();
    }

    public H f() {
        return this.f108406b;
    }

    public final void g(C15119A c15119a, C15120B c15120b) {
        this.f108406b.i().l(new byte[this.f108405a.g()], this.f108408d.j());
        this.f108408d = c15119a;
        this.f108409e = c15120b;
    }

    public void h(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("privateKey == null");
        }
        if (bArr2 == null) {
            throw new NullPointerException("publicKey == null");
        }
        C15119A k10 = new C15119A.b(this.f108405a).o(bArr).k();
        C15120B e10 = new C15120B.b(this.f108405a).f(bArr2).e();
        if (!org.bouncycastle.util.a.g(k10.k(), e10.g())) {
            throw new IllegalStateException("root of private key and public key do not match");
        }
        if (!org.bouncycastle.util.a.g(k10.j(), e10.f())) {
            throw new IllegalStateException("public seed of private key and public key do not match");
        }
        this.f108406b.i().l(new byte[this.f108405a.g()], k10.j());
        this.f108408d = k10;
        this.f108409e = e10;
    }

    public byte[] i(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("message == null");
        }
        C15122D c15122d = new C15122D();
        c15122d.a(true, this.f108408d);
        byte[] b10 = c15122d.b(bArr);
        C15119A c15119a = (C15119A) c15122d.c();
        this.f108408d = c15119a;
        g(c15119a, this.f108409e);
        return b10;
    }

    public boolean j(byte[] bArr, byte[] bArr2, byte[] bArr3) throws ParseException {
        if (bArr == null) {
            throw new NullPointerException("message == null");
        }
        if (bArr2 == null) {
            throw new NullPointerException("signature == null");
        }
        if (bArr3 == null) {
            throw new NullPointerException("publicKey == null");
        }
        C15122D c15122d = new C15122D();
        c15122d.a(false, new C15120B.b(d()).f(bArr3).e());
        return c15122d.d(bArr, bArr2);
    }
}
