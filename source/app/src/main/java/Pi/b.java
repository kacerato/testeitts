package Pi;

import Bi.C2371c;
import Bi.InterfaceC2372d;
import Bi.InterfaceC2373e;
import Ci.p;
import Oi.C2940p;
import Oi.P;
import Xi.C3335c;
import Xi.G;
import Xi.L;
import Xi.M0;
import Xi.N0;
import Xi.O0;
import Xi.P0;
import Xi.Q0;
import Xi.R0;
import em.h;
import java.math.BigInteger;
import java.security.SecureRandom;
import jk.B;
import jk.k;
import mk.I;
import mk.M;
import mk.Q;
import org.bouncycastle.util.w;

public class b {

    public InterfaceC2372d f21496a;

    public InterfaceC2373e f21497b;

    public final short f21498c;

    public c f21499d;

    public byte f21500e;

    public int f21501f;

    public int f21502g;

    public G f21503h;

    public b(short s10) {
        InterfaceC2372d p10;
        Bi.G m02;
        this.f21498c = s10;
        if (s10 == 32) {
            this.f21499d = new c((short) 1);
            this.f21497b = new p();
            this.f21502g = 32;
            this.f21501f = 32;
            p10 = new P();
            this.f21496a = p10;
            m02 = new M0(new SecureRandom());
        } else if (s10 != 33) {
            switch (s10) {
                case 16:
                    this.f21499d = new c((short) 1);
                    I i10 = new I();
                    this.f21503h = new G(i10, i10.i(new BigInteger(1, h.b("6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296")), new BigInteger(1, h.b("4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"))), i10.A(), i10.s(), h.b("c49d360886e704936a6678e1139d26b7819f7e90"));
                    this.f21497b = new Ci.f();
                    this.f21500e = (byte) -1;
                    this.f21501f = 32;
                    this.f21502g = 32;
                    p10 = new C2940p();
                    this.f21496a = p10;
                    m02 = new Xi.I(this.f21503h, new SecureRandom());
                    break;
                case 17:
                    this.f21499d = new c((short) 2);
                    M m10 = new M();
                    this.f21503h = new G(m10, m10.i(new BigInteger(1, h.b("aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7")), new BigInteger(1, h.b("3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"))), m10.A(), m10.s(), h.b("a335926aa319a27a1d00896a6773a4827acdac73"));
                    this.f21497b = new Ci.f();
                    this.f21500e = (byte) -1;
                    this.f21501f = 48;
                    this.f21502g = 48;
                    p10 = new C2940p();
                    this.f21496a = p10;
                    m02 = new Xi.I(this.f21503h, new SecureRandom());
                    break;
                case 18:
                    this.f21499d = new c((short) 3);
                    Q q10 = new Q();
                    this.f21503h = new G(q10, q10.i(new BigInteger("c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", 16), new BigInteger("11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650", 16)), q10.A(), q10.s(), h.b("d09e8800291cb85396cc6717393284aaa0da64ba"));
                    this.f21497b = new Ci.f();
                    this.f21500e = (byte) 1;
                    this.f21501f = 66;
                    this.f21502g = 64;
                    p10 = new C2940p();
                    this.f21496a = p10;
                    m02 = new Xi.I(this.f21503h, new SecureRandom());
                    break;
                default:
                    throw new IllegalArgumentException("invalid kem id");
            }
        } else {
            this.f21499d = new c((short) 3);
            this.f21497b = new p();
            this.f21502g = 64;
            this.f21501f = 56;
            p10 = new Oi.Q();
            this.f21496a = p10;
            m02 = new P0(new SecureRandom());
        }
        p10.b(m02);
    }

    public byte[] a(byte[] bArr, C2371c c2371c, C3335c c3335c) {
        C3335c f10 = f(bArr);
        this.f21497b.a(c2371c.a());
        byte[] n10 = n(this.f21497b.b(f10).toByteArray(), this.f21497b.c());
        this.f21497b.a(c2371c.a());
        return i(org.bouncycastle.util.a.B(n10, n(this.f21497b.b(c3335c).toByteArray(), this.f21497b.c())), org.bouncycastle.util.a.C(bArr, l(c2371c.b()), l(c3335c)));
    }

    public byte[][] b(C3335c c3335c, C2371c c2371c) {
        C2371c a10 = this.f21496a.a();
        this.f21497b.a(a10.a());
        byte[] n10 = n(this.f21497b.b(c3335c).toByteArray(), this.f21497b.c());
        this.f21497b.a(c2371c.a());
        byte[] B10 = org.bouncycastle.util.a.B(n10, n(this.f21497b.b(c3335c).toByteArray(), this.f21497b.c()));
        byte[] l10 = l(a10.b());
        return new byte[][]{i(B10, org.bouncycastle.util.a.C(l10, l(c3335c), l(c2371c.b()))), l10};
    }

    public byte[] c(byte[] bArr, C2371c c2371c) {
        C3335c f10 = f(bArr);
        this.f21497b.a(c2371c.a());
        return i(n(this.f21497b.b(f10).toByteArray(), this.f21497b.c()), org.bouncycastle.util.a.B(bArr, l(c2371c.b())));
    }

    public C2371c d(byte[] bArr) {
        byte[] B10 = org.bouncycastle.util.a.B(w.j("KEM"), org.bouncycastle.util.p.Q(this.f21498c));
        short s10 = this.f21498c;
        if (s10 == 32) {
            N0 n02 = new N0(this.f21499d.c(this.f21499d.d(null, B10, "dkp_prk", bArr), B10, "sk", null, this.f21501f));
            return new C2371c((C3335c) n02.e(), (C3335c) n02);
        }
        if (s10 == 33) {
            Q0 q02 = new Q0(this.f21499d.c(this.f21499d.d(null, B10, "dkp_prk", bArr), B10, "sk", null, this.f21501f));
            return new C2371c((C3335c) q02.e(), (C3335c) q02);
        }
        switch (s10) {
            case 16:
            case 17:
            case 18:
                byte[] d10 = this.f21499d.d(null, B10, "dkp_prk", bArr);
                for (int i10 = 0; i10 <= 255; i10++) {
                    byte[] c10 = this.f21499d.c(d10, B10, "candidate", new byte[]{(byte) i10}, this.f21501f);
                    c10[0] = (byte) (c10[0] & this.f21500e);
                    BigInteger bigInteger = new BigInteger(1, c10);
                    if (m(bigInteger)) {
                        return new C2371c((C3335c) new Xi.M(new k().a(this.f21503h.b(), bigInteger), this.f21503h), (C3335c) new L(bigInteger, this.f21503h));
                    }
                }
                throw new IllegalStateException("DeriveKeyPairError");
            default:
                throw new IllegalStateException("invalid kem id");
        }
    }

    public C2371c e(byte[] bArr, byte[] bArr2) {
        C3335c f10 = bArr2 != null ? f(bArr2) : null;
        short s10 = this.f21498c;
        if (s10 == 32) {
            N0 n02 = new N0(bArr);
            if (f10 == null) {
                f10 = n02.e();
            }
            return new C2371c(f10, (C3335c) n02);
        }
        if (s10 == 33) {
            Q0 q02 = new Q0(bArr);
            if (f10 == null) {
                f10 = q02.e();
            }
            return new C2371c(f10, (C3335c) q02);
        }
        switch (s10) {
            case 16:
            case 17:
            case 18:
                L l10 = new L(new BigInteger(1, bArr), this.f21503h);
                if (f10 == null) {
                    f10 = new Xi.M(new k().a(this.f21503h.b(), l10.e()), this.f21503h);
                }
                return new C2371c(f10, (C3335c) l10);
            default:
                throw new IllegalStateException("invalid kem id");
        }
    }

    public C3335c f(byte[] bArr) {
        short s10 = this.f21498c;
        if (s10 == 32) {
            return new O0(bArr);
        }
        if (s10 == 33) {
            return new R0(bArr);
        }
        switch (s10) {
            case 16:
            case 17:
            case 18:
                return new Xi.M(this.f21503h.a().l(bArr), this.f21503h);
            default:
                throw new IllegalStateException("invalid kem id");
        }
    }

    public byte[][] g(C3335c c3335c) {
        return h(c3335c, this.f21496a.a());
    }

    public byte[][] h(C3335c c3335c, C2371c c2371c) {
        this.f21497b.a(c2371c.a());
        byte[] n10 = n(this.f21497b.b(c3335c).toByteArray(), this.f21497b.c());
        byte[] l10 = l(c2371c.b());
        return new byte[][]{i(n10, org.bouncycastle.util.a.B(l10, l(c3335c))), l10};
    }

    public final byte[] i(byte[] bArr, byte[] bArr2) {
        byte[] B10 = org.bouncycastle.util.a.B(w.j("KEM"), org.bouncycastle.util.p.Q(this.f21498c));
        return this.f21499d.c(this.f21499d.d(null, B10, "eae_prk", bArr), B10, "shared_secret", bArr2, this.f21502g);
    }

    public C2371c j() {
        return this.f21496a.a();
    }

    public byte[] k(C3335c c3335c) {
        short s10 = this.f21498c;
        if (s10 == 32) {
            return ((N0) c3335c).getEncoded();
        }
        if (s10 == 33) {
            return ((Q0) c3335c).getEncoded();
        }
        switch (s10) {
            case 16:
            case 17:
            case 18:
                return n(((L) c3335c).e().toByteArray(), this.f21501f);
            default:
                throw new IllegalStateException("invalid kem id");
        }
    }

    public byte[] l(C3335c c3335c) {
        short s10 = this.f21498c;
        if (s10 == 32) {
            return ((O0) c3335c).getEncoded();
        }
        if (s10 == 33) {
            return ((R0) c3335c).getEncoded();
        }
        switch (s10) {
            case 16:
            case 17:
            case 18:
                return ((Xi.M) c3335c).e().l(false);
            default:
                throw new IllegalStateException("invalid kem id");
        }
    }

    public final boolean m(BigInteger bigInteger) {
        BigInteger e10 = this.f21503h.e();
        return bigInteger.compareTo(BigInteger.valueOf(1L)) >= 0 && bigInteger.compareTo(e10) < 0 && B.i(bigInteger) >= (e10.bitLength() >>> 2);
    }

    public final byte[] n(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[i10];
        if (bArr.length <= i10) {
            System.arraycopy(bArr, 0, bArr2, i10 - bArr.length, bArr.length);
        } else {
            System.arraycopy(bArr, bArr.length - i10, bArr2, 0, i10);
        }
        return bArr2;
    }
}
