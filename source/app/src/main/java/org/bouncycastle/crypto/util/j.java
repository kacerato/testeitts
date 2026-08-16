package org.bouncycastle.crypto.util;

import Xh.y;
import Xi.A;
import Xi.C3335c;
import Xi.C3375z;
import Xi.G0;
import Xi.K;
import Xi.L;
import Xi.O;
import Xi.P;
import java.io.IOException;
import java.math.BigInteger;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.M;

public class j {

    public static final byte[] f101071a = org.bouncycastle.util.w.j("openssh-key-v1\u0000");

    public static boolean a(E e10) {
        for (int i10 = 0; i10 < e10.size(); i10++) {
            if (!(e10.I(i10) instanceof C14539s)) {
                return false;
            }
        }
        return true;
    }

    public static byte[] b(C3335c c3335c) throws IOException {
        if (c3335c == null) {
            throw new IllegalArgumentException("param is null");
        }
        if (!(c3335c instanceof G0) && !(c3335c instanceof L)) {
            if (c3335c instanceof A) {
                A a10 = (A) c3335c;
                C3375z d10 = a10.d();
                C14518h c14518h = new C14518h();
                c14518h.a(new C14539s(0L));
                c14518h.a(new C14539s(d10.b()));
                c14518h.a(new C14539s(d10.c()));
                c14518h.a(new C14539s(d10.a()));
                c14518h.a(new C14539s(d10.a().modPow(a10.e(), d10.b())));
                c14518h.a(new C14539s(a10.e()));
                try {
                    return new oh.G0(c14518h).getEncoded();
                } catch (Exception e10) {
                    throw new IllegalStateException("unable to encode DSAPrivateKeyParameters " + e10.getMessage());
                }
            }
            if (!(c3335c instanceof O)) {
                throw new IllegalArgumentException("unable to convert " + c3335c.getClass().getName() + " to openssh private key");
            }
            O o10 = (O) c3335c;
            P e11 = o10.e();
            t tVar = new t();
            tVar.g(f101071a);
            tVar.h("none");
            tVar.h("none");
            tVar.h("");
            tVar.d(1);
            tVar.f(k.a(e11));
            t tVar2 = new t();
            int nextInt = Bi.r.h().nextInt();
            tVar2.d(nextInt);
            tVar2.d(nextInt);
            tVar2.h(k.f101074c);
            byte[] encoded = e11.getEncoded();
            tVar2.f(encoded);
            tVar2.f(org.bouncycastle.util.a.B(o10.getEncoded(), encoded));
            tVar2.h("");
            tVar.f(tVar2.b());
            return tVar.a();
        }
        return p.a(c3335c).E().r().getEncoded();
    }

    public static C3335c c(byte[] bArr) {
        C3335c c3335c = null;
        if (bArr[0] == 48) {
            E G10 = E.G(bArr);
            if (G10.size() == 6) {
                if (a(G10) && ((C14539s) G10.I(0)).H().equals(org.bouncycastle.util.b.f102315a)) {
                    c3335c = new A(((C14539s) G10.I(5)).H(), new C3375z(((C14539s) G10.I(1)).H(), ((C14539s) G10.I(2)).H(), ((C14539s) G10.I(3)).H()));
                }
            } else if (G10.size() == 9) {
                if (a(G10) && ((C14539s) G10.I(0)).H().equals(org.bouncycastle.util.b.f102315a)) {
                    y y10 = y.y(G10);
                    c3335c = new G0(y10.A(), y10.E(), y10.D(), y10.B(), y10.C(), y10.v(), y10.x(), y10.u());
                }
            } else if (G10.size() == 4 && (G10.I(3) instanceof M) && (G10.I(2) instanceof M)) {
                Zh.a u10 = Zh.a.u(G10);
                C14549x K10 = C14549x.K(u10.y());
                c3335c = new L(u10.v(), new K(K10, ki.e.d(K10)));
            }
        } else {
            s sVar = new s(f101071a, bArr);
            if (!"none".equals(sVar.g())) {
                throw new IllegalStateException("encrypted keys not supported");
            }
            sVar.i();
            sVar.i();
            if (sVar.h() != 1) {
                throw new IllegalStateException("multiple keys not supported");
            }
            k.c(sVar.d());
            byte[] e10 = sVar.e();
            if (sVar.b()) {
                throw new IllegalArgumentException("decoded key has trailing data");
            }
            s sVar2 = new s(e10);
            if (sVar2.h() != sVar2.h()) {
                throw new IllegalStateException("private key check values are not the same");
            }
            String g10 = sVar2.g();
            if (k.f101074c.equals(g10)) {
                sVar2.d();
                byte[] d10 = sVar2.d();
                if (d10.length != 64) {
                    throw new IllegalStateException("private key value of wrong length");
                }
                c3335c = new O(d10, 0);
            } else if (g10.startsWith(k.f101073b)) {
                C14549x b10 = u.b(org.bouncycastle.util.w.c(sVar2.d()));
                if (b10 == null) {
                    throw new IllegalStateException("OID not found for: " + g10);
                }
                ki.l d11 = Sh.c.d(b10);
                if (d11 == null) {
                    throw new IllegalStateException("Curve not found for: " + ((Object) b10));
                }
                sVar2.d();
                c3335c = new L(new BigInteger(1, sVar2.d()), new K(b10, d11));
            } else if (g10.startsWith(k.f101072a)) {
                BigInteger bigInteger = new BigInteger(1, sVar2.d());
                BigInteger bigInteger2 = new BigInteger(1, sVar2.d());
                BigInteger bigInteger3 = new BigInteger(1, sVar2.d());
                BigInteger bigInteger4 = new BigInteger(1, sVar2.d());
                BigInteger bigInteger5 = new BigInteger(1, sVar2.d());
                BigInteger bigInteger6 = new BigInteger(1, sVar2.d());
                BigInteger bigInteger7 = org.bouncycastle.util.b.f102316b;
                c3335c = new G0(bigInteger, bigInteger2, bigInteger3, bigInteger5, bigInteger6, bigInteger3.remainder(bigInteger5.subtract(bigInteger7)), bigInteger3.remainder(bigInteger6.subtract(bigInteger7)), bigInteger4);
            }
            sVar2.i();
            if (sVar2.b()) {
                throw new IllegalArgumentException("private key block has trailing data");
            }
        }
        if (c3335c != null) {
            return c3335c;
        }
        throw new IllegalArgumentException("unable to parse key");
    }
}
