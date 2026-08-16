package Di;

import Bi.InterfaceC2392y;
import Bi.r;
import Ii.L;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.cms.InterfaceC14626d;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.util.h;

public class a {

    public static final int f5192q = 0;

    public static final int f5193r = 10;

    public static final int f5194s = 20;

    public static final int f5195t = 30;

    public static final int f5196u = 40;

    public static final int f5197v = 50;

    public static final int f5198w = 60;

    public static final int f5199x = 70;

    public final String f5200a;

    public char[] f5201b;

    public final InterfaceC2392y f5202c;

    public final SecureRandom f5203d;

    public final BigInteger f5204e;

    public final BigInteger f5205f;

    public final BigInteger f5206g;

    public String f5207h;

    public BigInteger f5208i;

    public BigInteger f5209j;

    public BigInteger f5210k;

    public BigInteger f5211l;

    public BigInteger f5212m;

    public BigInteger f5213n;

    public BigInteger f5214o;

    public int f5215p;

    public a(String str, char[] cArr) {
        this(str, cArr, c.f5221c);
    }

    public BigInteger a() {
        int i10 = this.f5215p;
        if (i10 >= 50) {
            throw new IllegalStateException("Key already calculated for " + this.f5200a);
        }
        if (i10 < 40) {
            throw new IllegalStateException("Round2 payload must be validated prior to creating key for " + this.f5200a);
        }
        BigInteger b10 = b();
        org.bouncycastle.util.a.g0(this.f5201b, (char) 0);
        this.f5201b = null;
        BigInteger e10 = g.e(this.f5204e, this.f5205f, this.f5213n, this.f5209j, b10, this.f5214o);
        this.f5208i = null;
        this.f5209j = null;
        this.f5214o = null;
        this.f5215p = 50;
        return e10;
    }

    public final BigInteger b() {
        try {
            return g.i(this.f5205f, this.f5201b);
        } catch (CryptoException e10) {
            throw h.b(e10.getMessage(), e10);
        }
    }

    public d c() {
        if (this.f5215p >= 10) {
            throw new IllegalStateException("Round1 payload already created for " + this.f5200a);
        }
        this.f5208i = g.m(this.f5205f, this.f5203d);
        this.f5209j = g.n(this.f5205f, this.f5203d);
        this.f5210k = g.c(this.f5204e, this.f5206g, this.f5208i);
        this.f5211l = g.c(this.f5204e, this.f5206g, this.f5209j);
        BigInteger[] l10 = g.l(this.f5204e, this.f5205f, this.f5206g, this.f5210k, this.f5208i, this.f5200a, this.f5202c, this.f5203d);
        BigInteger[] l11 = g.l(this.f5204e, this.f5205f, this.f5206g, this.f5211l, this.f5209j, this.f5200a, this.f5202c, this.f5203d);
        this.f5215p = 10;
        return new d(this.f5200a, this.f5210k, this.f5211l, l10, l11);
    }

    public e d() {
        int i10 = this.f5215p;
        if (i10 >= 30) {
            throw new IllegalStateException("Round2 payload already created for " + this.f5200a);
        }
        if (i10 < 20) {
            throw new IllegalStateException("Round1 payload must be validated prior to creating Round2 payload for " + this.f5200a);
        }
        BigInteger b10 = g.b(this.f5204e, this.f5210k, this.f5212m, this.f5213n);
        BigInteger k10 = g.k(this.f5205f, this.f5209j, b());
        BigInteger a10 = g.a(this.f5204e, this.f5205f, b10, k10);
        BigInteger[] l10 = g.l(this.f5204e, this.f5205f, b10, a10, k10, this.f5200a, this.f5202c, this.f5203d);
        this.f5215p = 30;
        return new e(this.f5200a, a10, l10);
    }

    public f e(BigInteger bigInteger) {
        int i10 = this.f5215p;
        if (i10 >= 60) {
            throw new IllegalStateException("Round3 payload already created for " + this.f5200a);
        }
        if (i10 >= 50) {
            BigInteger g10 = g.g(this.f5200a, this.f5207h, this.f5210k, this.f5211l, this.f5212m, this.f5213n, bigInteger, this.f5202c);
            this.f5215p = 60;
            return new f(this.f5200a, g10);
        }
        throw new IllegalStateException("Keying material must be calculated prior to creating Round3 payload for " + this.f5200a);
    }

    public int f() {
        return this.f5215p;
    }

    public void g(d dVar) throws CryptoException {
        if (this.f5215p >= 20) {
            throw new IllegalStateException("Validation already attempted for round1 payload for" + this.f5200a);
        }
        this.f5207h = dVar.e();
        this.f5212m = dVar.a();
        this.f5213n = dVar.b();
        BigInteger[] c10 = dVar.c();
        BigInteger[] d10 = dVar.d();
        g.z(this.f5200a, dVar.e());
        g.w(this.f5213n);
        g.B(this.f5204e, this.f5205f, this.f5206g, this.f5212m, c10, dVar.e(), this.f5202c);
        g.B(this.f5204e, this.f5205f, this.f5206g, this.f5213n, d10, dVar.e(), this.f5202c);
        this.f5215p = 20;
    }

    public void h(e eVar) throws CryptoException {
        int i10 = this.f5215p;
        if (i10 >= 40) {
            throw new IllegalStateException("Validation already attempted for round2 payload for" + this.f5200a);
        }
        if (i10 < 20) {
            throw new IllegalStateException("Round1 payload must be validated prior to validating Round2 payload for " + this.f5200a);
        }
        BigInteger b10 = g.b(this.f5204e, this.f5212m, this.f5210k, this.f5211l);
        this.f5214o = eVar.a();
        BigInteger[] b11 = eVar.b();
        g.z(this.f5200a, eVar.c());
        g.A(this.f5207h, eVar.c());
        g.v(b10);
        g.B(this.f5204e, this.f5205f, b10, this.f5214o, b11, eVar.c(), this.f5202c);
        this.f5215p = 40;
    }

    public void i(f fVar, BigInteger bigInteger) throws CryptoException {
        int i10 = this.f5215p;
        if (i10 >= 70) {
            throw new IllegalStateException("Validation already attempted for round3 payload for" + this.f5200a);
        }
        if (i10 < 50) {
            throw new IllegalStateException("Keying material must be calculated validated prior to validating Round3 payload for " + this.f5200a);
        }
        g.z(this.f5200a, fVar.b());
        g.A(this.f5207h, fVar.b());
        g.x(this.f5200a, this.f5207h, this.f5210k, this.f5211l, this.f5212m, this.f5213n, bigInteger, this.f5202c, fVar.a());
        this.f5210k = null;
        this.f5211l = null;
        this.f5212m = null;
        this.f5213n = null;
        this.f5215p = 70;
    }

    public a(String str, char[] cArr, b bVar) {
        this(str, cArr, bVar, L.x(), r.h());
    }

    public a(String str, char[] cArr, b bVar, InterfaceC2392y interfaceC2392y, SecureRandom secureRandom) {
        g.y(str, "participantId");
        g.y(cArr, "password");
        g.y(bVar, com.itsmagic.engine.Engines.Engine.Animation.a.f72594b);
        g.y(interfaceC2392y, InterfaceC14626d.f100733b);
        g.y(secureRandom, "random");
        if (cArr.length == 0) {
            throw new IllegalArgumentException("Password must not be empty.");
        }
        this.f5200a = str;
        this.f5201b = org.bouncycastle.util.a.R(cArr, cArr.length);
        this.f5204e = bVar.b();
        this.f5205f = bVar.c();
        this.f5206g = bVar.a();
        this.f5202c = interfaceC2392y;
        this.f5203d = secureRandom;
        this.f5215p = 0;
    }
}
