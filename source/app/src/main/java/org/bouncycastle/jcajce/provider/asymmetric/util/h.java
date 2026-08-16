package org.bouncycastle.jcajce.provider.asymmetric.util;

import Xi.G;
import hk.C13523c;
import hk.C13524d;
import hk.C13525e;
import java.math.BigInteger;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import jk.AbstractC13875e;
import jk.C13873c;
import oh.C14549x;
import oh.E;
import org.bouncycastle.jce.provider.C14720a;
import rk.InterfaceC15191b;
import rk.InterfaceC15195f;
import rk.InterfaceC15196g;

public class h {

    public static class a {

        public static Map f101332a = a();

        public static Map a() {
            HashMap hashMap = new HashMap();
            Enumeration o10 = Ji.a.o();
            while (o10.hasMoreElements()) {
                String str = (String) o10.nextElement();
                ki.m c10 = ki.e.c(str);
                if (c10 != null) {
                    AbstractC13875e c11 = c10.c();
                    if (C13873c.o(c11)) {
                        hashMap.put(c11, Ji.a.k(str).c());
                    }
                }
            }
            AbstractC13875e c12 = Ji.a.k("Curve25519").c();
            hashMap.put(new AbstractC13875e.f(c12.v().b(), c12.p().v(), c12.r().v(), c12.A(), c12.s(), true), c12);
            return hashMap;
        }

        public static AbstractC13875e b(AbstractC13875e abstractC13875e) {
            AbstractC13875e abstractC13875e2 = (AbstractC13875e) f101332a.get(abstractC13875e);
            return abstractC13875e2 != null ? abstractC13875e2 : abstractC13875e;
        }
    }

    public static EllipticCurve a(AbstractC13875e abstractC13875e, byte[] bArr) {
        return new EllipticCurve(c(abstractC13875e.v()), abstractC13875e.p().v(), abstractC13875e.r().v(), null);
    }

    public static AbstractC13875e b(EllipticCurve ellipticCurve) {
        ECField field = ellipticCurve.getField();
        BigInteger a10 = ellipticCurve.getA();
        BigInteger b10 = ellipticCurve.getB();
        if (field instanceof ECFieldFp) {
            return a.b(new AbstractC13875e.f(((ECFieldFp) field).getP(), a10, b10, null, null));
        }
        ECFieldF2m eCFieldF2m = (ECFieldF2m) field;
        int m10 = eCFieldF2m.getM();
        int[] a11 = i.a(eCFieldF2m.getMidTermsOfReductionPolynomial());
        return new AbstractC13875e.C1828e(m10, a11[0], a11[1], a11[2], a10, b10, (BigInteger) null, (BigInteger) null);
    }

    public static ECField c(InterfaceC15191b interfaceC15191b) {
        if (C13873c.p(interfaceC15191b)) {
            return new ECFieldFp(interfaceC15191b.b());
        }
        InterfaceC15195f d10 = ((InterfaceC15196g) interfaceC15191b).d();
        int[] b10 = d10.b();
        return new ECFieldF2m(d10.a(), org.bouncycastle.util.a.R0(org.bouncycastle.util.a.Z(b10, 1, b10.length - 1)));
    }

    public static ECPoint d(jk.i iVar) {
        jk.i B10 = iVar.B();
        return new ECPoint(B10.f().v(), B10.g().v());
    }

    public static jk.i e(ECParameterSpec eCParameterSpec, ECPoint eCPoint) {
        return f(b(eCParameterSpec.getCurve()), eCPoint);
    }

    public static jk.i f(AbstractC13875e abstractC13875e, ECPoint eCPoint) {
        return abstractC13875e.i(eCPoint.getAffineX(), eCPoint.getAffineY());
    }

    public static C13525e g(ECParameterSpec eCParameterSpec) {
        AbstractC13875e b10 = b(eCParameterSpec.getCurve());
        jk.i f10 = f(b10, eCParameterSpec.getGenerator());
        BigInteger order = eCParameterSpec.getOrder();
        BigInteger valueOf = BigInteger.valueOf(eCParameterSpec.getCofactor());
        byte[] seed = eCParameterSpec.getCurve().getSeed();
        return eCParameterSpec instanceof C13524d ? new C13523c(((C13524d) eCParameterSpec).c(), b10, f10, order, valueOf, seed) : new C13525e(b10, f10, order, valueOf, seed);
    }

    public static ECParameterSpec h(EllipticCurve ellipticCurve, C13525e c13525e) {
        ECPoint d10 = d(c13525e.b());
        return c13525e instanceof C13523c ? new C13524d(((C13523c) c13525e).f(), ellipticCurve, d10, c13525e.d(), c13525e.c()) : new ECParameterSpec(ellipticCurve, d10, c13525e.d(), c13525e.c().intValue());
    }

    public static ECParameterSpec i(G g10) {
        return new ECParameterSpec(a(g10.a(), null), d(g10.b()), g10.e(), g10.c().intValue());
    }

    public static ECParameterSpec j(ki.j jVar, AbstractC13875e abstractC13875e) {
        ECParameterSpec c13524d;
        if (jVar.z()) {
            C14549x c14549x = (C14549x) jVar.x();
            ki.l j10 = i.j(c14549x);
            if (j10 == null) {
                Map d10 = C14720a.f101702f.d();
                if (!d10.isEmpty()) {
                    j10 = (ki.l) d10.get(c14549x);
                }
            }
            return new C13524d(i.e(c14549x), a(abstractC13875e, j10.D()), d(j10.z()), j10.C(), j10.A());
        }
        if (jVar.y()) {
            return null;
        }
        E G10 = E.G(jVar.x());
        if (G10.size() > 3) {
            ki.l B10 = ki.l.B(G10);
            EllipticCurve a10 = a(abstractC13875e, B10.D());
            c13524d = B10.A() != null ? new ECParameterSpec(a10, d(B10.z()), B10.C(), B10.A().intValue()) : new ECParameterSpec(a10, d(B10.z()), B10.C(), 1);
        } else {
            yh.g w10 = yh.g.w(G10);
            C13523c b10 = org.bouncycastle.jce.a.b(yh.b.l(w10.y()));
            c13524d = new C13524d(yh.b.l(w10.y()), a(b10.a(), b10.e()), d(b10.b()), b10.d(), b10.c());
        }
        return c13524d;
    }

    public static ECParameterSpec k(ki.l lVar) {
        return new ECParameterSpec(a(lVar.v(), null), d(lVar.z()), lVar.C(), lVar.A().intValue());
    }

    public static AbstractC13875e l(Tj.c cVar, ki.j jVar) {
        Set c10 = cVar.c();
        if (!jVar.z()) {
            if (jVar.y()) {
                return cVar.b().a();
            }
            E G10 = E.G(jVar.x());
            if (c10.isEmpty()) {
                return (G10.size() > 3 ? ki.l.B(G10) : yh.b.k(C14549x.K(G10.I(0)))).v();
            }
            throw new IllegalStateException("encoded parameters not acceptable");
        }
        C14549x K10 = C14549x.K(jVar.x());
        if (!c10.isEmpty() && !c10.contains(K10)) {
            throw new IllegalStateException("named curve not acceptable");
        }
        ki.l j10 = i.j(K10);
        if (j10 == null) {
            j10 = (ki.l) cVar.d().get(K10);
        }
        return j10.v();
    }

    public static G m(Tj.c cVar, ECParameterSpec eCParameterSpec) {
        if (eCParameterSpec != null) {
            return i.f(cVar, g(eCParameterSpec));
        }
        C13525e b10 = cVar.b();
        return new G(b10.a(), b10.b(), b10.d(), b10.c(), b10.e());
    }
}
