package org.bouncycastle.crypto.util;

import Xh.y;
import Xi.A;
import Xi.C3335c;
import Xi.C3363q;
import Xi.C3375z;
import Xi.G;
import Xi.G0;
import Xi.H;
import Xi.K;
import Xi.L;
import Xi.N0;
import Xi.O;
import Xi.Q0;
import Xi.S;
import Xi.W;
import Xi.X;
import hi.C13486b;
import hi.C13508u;
import hi.E0;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import oh.AbstractC14551y;
import oh.B;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import qj.InterfaceC15115a;
import yh.InterfaceC16192a;

public class o {
    public static C3335c a(Xh.v vVar) throws IOException {
        BigInteger I10;
        H h10;
        BigInteger bigInteger;
        G g10;
        if (vVar == null) {
            throw new IllegalArgumentException("keyInfo argument null");
        }
        C13486b y10 = vVar.y();
        C14549x u10 = y10.u();
        if (u10.A(Xh.t.f29017H0) || u10.A(Xh.t.f29045Q0) || u10.A(E0.f90637W4)) {
            y y11 = y.y(vVar.E());
            return new G0(y11.A(), y11.E(), y11.D(), y11.B(), y11.C(), y11.v(), y11.x(), y11.u());
        }
        H h11 = null;
        C3375z c3375z = null;
        if (u10.A(Xh.t.f29073Y0)) {
            Xh.h v10 = Xh.h.v(y10.x());
            C14539s c14539s = (C14539s) vVar.E();
            BigInteger x10 = v10.x();
            return new Xi.r(c14539s.I(), new C3363q(v10.y(), v10.u(), null, x10 == null ? 0 : x10.intValue()));
        }
        if (u10.A(Bj.b.f1914l)) {
            Bj.a v11 = Bj.a.v(y10.x());
            return new X(((C14539s) vVar.E()).I(), new W(v11.x(), v11.u()));
        }
        if (u10.A(ki.r.f95349s6)) {
            C14539s c14539s2 = (C14539s) vVar.E();
            InterfaceC14516g x11 = y10.x();
            if (x11 != null) {
                C13508u v12 = C13508u.v(x11.r());
                c3375z = new C3375z(v12.x(), v12.y(), v12.u());
            }
            return new A(c14539s2.I(), c3375z);
        }
        if (u10.A(ki.r.f95305I5)) {
            ki.j u11 = ki.j.u(y10.x());
            boolean z10 = u11.z();
            B x12 = u11.x();
            if (z10) {
                C14549x c14549x = (C14549x) x12;
                ki.l l10 = Ji.a.l(c14549x);
                if (l10 == null) {
                    l10 = ki.e.d(c14549x);
                }
                g10 = new K(c14549x, l10);
            } else {
                ki.l B10 = ki.l.B(x12);
                g10 = new G(B10.v(), B10.z(), B10.C(), B10.A(), B10.D());
            }
            return new L(Zh.a.u(vVar.E()).v(), g10);
        }
        if (u10.A(InterfaceC15115a.f108207b)) {
            return 32 == vVar.z() ? new N0(vVar.x().H()) : new N0(d(vVar));
        }
        if (u10.A(InterfaceC15115a.f108208c)) {
            return 56 == vVar.z() ? new Q0(vVar.x().H()) : new Q0(d(vVar));
        }
        if (u10.A(InterfaceC15115a.f108209d)) {
            return new O(d(vVar));
        }
        if (u10.A(InterfaceC15115a.f108210e)) {
            return new S(d(vVar));
        }
        if (!u10.A(InterfaceC16192a.f130281m) && !u10.A(Cj.a.f4463h) && !u10.A(Cj.a.f4462g)) {
            throw new RuntimeException("algorithm identifier in private key not recognised");
        }
        InterfaceC14516g x13 = y10.x();
        yh.g w10 = yh.g.w(x13);
        B r10 = x13.r();
        if ((r10 instanceof E) && (E.G(r10).size() == 2 || E.G(r10).size() == 3)) {
            h10 = new H(new K(w10.y(), yh.b.k(w10.y())), w10.y(), w10.u(), w10.v());
            int z11 = vVar.z();
            if (z11 == 32 || z11 == 64) {
                bigInteger = new BigInteger(1, org.bouncycastle.util.a.N0(vVar.x().H()));
            } else {
                InterfaceC14516g E10 = vVar.E();
                if (E10 instanceof C14539s) {
                    I10 = C14539s.F(E10).H();
                } else {
                    bigInteger = new BigInteger(1, org.bouncycastle.util.a.N0(AbstractC14551y.F(E10).H()));
                }
            }
            I10 = bigInteger;
        } else {
            ki.j u12 = ki.j.u(y10.x());
            if (u12.z()) {
                C14549x K10 = C14549x.K(u12.x());
                h11 = new H(new K(K10, ki.e.d(K10)), w10.y(), w10.u(), w10.v());
            } else if (!u12.y()) {
                h11 = new H(new K(u10, ki.l.B(u12.x())), w10.y(), w10.u(), w10.v());
            }
            InterfaceC14516g E11 = vVar.E();
            I10 = E11 instanceof C14539s ? C14539s.F(E11).I() : Zh.a.u(E11).v();
            h10 = h11;
        }
        return new L(I10, new H(h10, w10.y(), w10.u(), w10.v()));
    }

    public static C3335c b(InputStream inputStream) throws IOException {
        return a(Xh.v.v(new oh.r(inputStream).k()));
    }

    public static C3335c c(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("privateKeyInfoData array null");
        }
        if (bArr.length != 0) {
            return a(Xh.v.v(B.B(bArr)));
        }
        throw new IllegalArgumentException("privateKeyInfoData array empty");
    }

    public static byte[] d(Xh.v vVar) throws IOException {
        return AbstractC14551y.F(vVar.E()).H();
    }
}
