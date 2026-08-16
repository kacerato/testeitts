package pl;

import Xi.C3335c;
import Xk.A;
import bl.C3904e;
import dl.C12965o;
import gl.C13399l;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import nl.C14466j;
import oh.AbstractC14508c;
import oh.AbstractC14551y;
import oh.B;
import oh.C14549x;
import oh.E;
import ol.C14613v;
import qh.InterfaceC15100a;
import ql.C15120B;
import ql.H;
import ql.J;
import ql.z;
import tj.InterfaceC15463a;

public class C15016d {

    public static Map f104150a;

    public static class b extends u {
        public b() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            try {
                return new Zk.i(C15019g.b(h0Var.u().u()), AbstractC14551y.F(h0Var.A()).H());
            } catch (Exception unused) {
                return new Zk.i(C15019g.b(h0Var.u().u()), h0Var.z().J());
            }
        }
    }

    public static class c extends u {
        public c() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            try {
                return new al.l(C15019g.q(h0Var.u().u()), Xk.b.u(h0Var.A()).v());
            } catch (Exception unused) {
                return new al.l(C15019g.q(h0Var.u().u()), h0Var.z().J());
            }
        }
    }

    public static class C1959d extends u {
        public C1959d() {
            super();
        }

        public static bl.g b(C3904e c3904e, AbstractC14508c abstractC14508c) {
            try {
                B B10 = B.B(abstractC14508c.J());
                if (!(B10 instanceof E)) {
                    return new bl.g(c3904e, AbstractC14551y.F(B10).H());
                }
                E G10 = E.G(B10);
                return new bl.g(c3904e, AbstractC14551y.F(G10.I(0)).H(), AbstractC14551y.F(G10.I(1)).H());
            } catch (Exception unused) {
                return new bl.g(c3904e, abstractC14508c.J());
            }
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return b(C15019g.d(h0Var.u().u()), h0Var.z());
        }
    }

    public static class e extends u {
        public e() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            byte[] J10 = h0Var.z().J();
            return new C12965o(C15019g.f(h0Var.u().u()), org.bouncycastle.util.a.X(J10, 1, J10.length));
        }
    }

    public static class f extends u {
        public f() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new el.j(C15019g.h(h0Var.u().u()), AbstractC14551y.F(h0Var.A()).H());
        }
    }

    public static class g extends u {
        public g() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            try {
                return new C13399l(C15019g.m(h0Var.u().u()), AbstractC14551y.F(h0Var.A()).H());
            } catch (Exception unused) {
                return new C13399l(C15019g.m(h0Var.u().u()), h0Var.z().J());
            }
        }
    }

    public static class h extends u {
        public h() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            cl.i o10 = C15019g.o(h0Var.u().u());
            try {
                Xk.h u10 = Xk.h.u(h0Var.A());
                return new cl.k(o10, u10.x(), u10.v());
            } catch (Exception unused) {
                return new cl.k(o10, h0Var.z().J());
            }
        }
    }

    public static class i extends u {
        public i() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            byte[] H10 = AbstractC14551y.F(h0Var.A()).H();
            if (org.bouncycastle.util.p.a(H10, 0) == 1) {
                return org.bouncycastle.pqc.crypto.lms.w.f(org.bouncycastle.util.a.X(H10, 4, H10.length));
            }
            if (H10.length == 64) {
                H10 = org.bouncycastle.util.a.X(H10, 4, H10.length);
            }
            return org.bouncycastle.pqc.crypto.lms.g.d(H10);
        }
    }

    public static class j extends u {
        public j() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            Xk.j w10 = Xk.j.w(h0Var.A());
            return new Rl.h(w10.x(), w10.y(), w10.v(), C15019g.k(w10.u().u()));
        }
    }

    public static class k extends u {
        public k() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new hl.h(h0Var.z().F());
        }
    }

    public static class l extends u {
        public l() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new jl.h(C15019g.u(h0Var.u().u()), AbstractC14551y.F(h0Var.A()).H());
        }
    }

    public static class m extends u {
        public m() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new il.i(C15019g.s(h0Var.u().u()), AbstractC14551y.F(h0Var.A()).H());
        }
    }

    public static class n extends u {
        public n() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new kl.n(C15019g.w(h0Var.u().u()), AbstractC14551y.F(h0Var.A()).H());
        }
    }

    public static class o extends u {
        public o() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new Tl.f(C15019g.y(h0Var.u()), h0Var.z().J());
        }
    }

    public static class p extends u {
        public p() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new ll.j(C15019g.A(h0Var.u().u()), AbstractC14551y.F(h0Var.A()).H());
        }
    }

    public static class q extends u {
        public q() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new ml.j(C15019g.C(h0Var.u().u()), AbstractC14551y.F(E.G(h0Var.A()).I(0)).H());
        }
    }

    public static class r extends u {
        public r() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new jl.p(C15019g.E(h0Var.u().u()), AbstractC14551y.F(h0Var.A()).H());
        }
    }

    public static class s extends u {
        public s() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            return new C14466j(h0Var.z().F(), C15019g.G(Xk.s.u(h0Var.u().x())));
        }
    }

    public static class t extends u {
        public t() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            try {
                byte[] H10 = AbstractC14551y.F(h0Var.A()).H();
                return new C14613v(C15019g.I(h0Var.u().u()), org.bouncycastle.util.a.X(H10, 4, H10.length));
            } catch (Exception unused) {
                return new C14613v(C15019g.I(h0Var.u().u()), h0Var.z().J());
            }
        }
    }

    public static abstract class u {
        public u() {
        }

        public abstract C3335c a(h0 h0Var, Object obj) throws IOException;
    }

    public static class v extends u {
        public v() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            J.b f10;
            Xk.v v10 = Xk.v.v(h0Var.u().x());
            if (v10 != null) {
                C14549x u10 = v10.x().u();
                A u11 = A.u(h0Var.A());
                f10 = new J.b(new H(v10.u(), C15019g.j(u10))).g(u11.v()).h(u11.x());
            } else {
                byte[] H10 = AbstractC14551y.F(h0Var.A()).H();
                f10 = new J.b(H.k(org.bouncycastle.util.p.a(H10, 0))).f(H10);
            }
            return f10.e();
        }
    }

    public static class w extends u {
        public w() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            C15120B.b f10;
            Xk.w v10 = Xk.w.v(h0Var.u().x());
            if (v10 != null) {
                C14549x u10 = v10.y().u();
                A u11 = A.u(h0Var.A());
                f10 = new C15120B.b(new z(v10.u(), v10.x(), C15019g.j(u10))).g(u11.v()).h(u11.x());
            } else {
                byte[] H10 = AbstractC14551y.F(h0Var.A()).H();
                f10 = new C15120B.b(z.k(org.bouncycastle.util.p.a(H10, 0))).f(H10);
            }
            return f10.e();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f104150a = hashMap;
        hashMap.put(Xk.m.f29551X, new o());
        f104150a.put(Xk.m.f29552Y, new o());
        f104150a.put(Xk.m.f29580r, new s());
        f104150a.put(Xk.m.f29584v, new k());
        f104150a.put(Xk.m.f29585w, new v());
        f104150a.put(Xk.m.f29533F, new w());
        f104150a.put(InterfaceC15463a.f117695a, new v());
        f104150a.put(InterfaceC15463a.f117696b, new w());
        f104150a.put(Xh.t.f29047Q2, new i());
        f104150a.put(Xk.m.f29576n, new j());
        f104150a.put(InterfaceC15100a.f108016a0, new t());
        f104150a.put(InterfaceC15100a.f108021b0, new t());
        f104150a.put(InterfaceC15100a.f108026c0, new t());
        f104150a.put(InterfaceC15100a.f108031d0, new t());
        f104150a.put(InterfaceC15100a.f108036e0, new t());
        f104150a.put(InterfaceC15100a.f108041f0, new t());
        f104150a.put(InterfaceC15100a.f108046g0, new t());
        f104150a.put(InterfaceC15100a.f108051h0, new t());
        f104150a.put(InterfaceC15100a.f108056i0, new t());
        f104150a.put(InterfaceC15100a.f108061j0, new t());
        f104150a.put(InterfaceC15100a.f108066k0, new t());
        f104150a.put(InterfaceC15100a.f108071l0, new t());
        f104150a.put(InterfaceC15100a.f108076m0, new t());
        f104150a.put(InterfaceC15100a.f108081n0, new t());
        f104150a.put(InterfaceC15100a.f108086o0, new t());
        f104150a.put(InterfaceC15100a.f108091p0, new t());
        f104150a.put(InterfaceC15100a.f108096q0, new t());
        f104150a.put(InterfaceC15100a.f108101r0, new t());
        f104150a.put(InterfaceC15100a.f108106s0, new t());
        f104150a.put(InterfaceC15100a.f108110t0, new t());
        f104150a.put(InterfaceC15100a.f108114u0, new t());
        f104150a.put(InterfaceC15100a.f108118v0, new t());
        f104150a.put(InterfaceC15100a.f108122w0, new t());
        f104150a.put(InterfaceC15100a.f108126x0, new t());
        f104150a.put(InterfaceC15100a.f108130y0, new t());
        f104150a.put(InterfaceC15100a.f108134z0, new t());
        f104150a.put(InterfaceC15100a.f107912A0, new t());
        f104150a.put(InterfaceC15100a.f107916B0, new t());
        f104150a.put(InterfaceC15100a.f107920C0, new t());
        f104150a.put(InterfaceC15100a.f107924D0, new t());
        f104150a.put(InterfaceC15100a.f107928E0, new t());
        f104150a.put(InterfaceC15100a.f107932F0, new t());
        f104150a.put(InterfaceC15100a.f107936G0, new t());
        f104150a.put(InterfaceC15100a.f107940H0, new t());
        f104150a.put(InterfaceC15100a.f107944I0, new t());
        f104150a.put(InterfaceC15100a.f107948J0, new t());
        f104150a.put(InterfaceC15100a.f107952K0, new t());
        f104150a.put(InterfaceC15100a.f107964N0, new t());
        f104150a.put(InterfaceC15100a.f107960M0, new t());
        f104150a.put(InterfaceC15100a.f107988T0, new t());
        f104150a.put(InterfaceC15100a.f107984S0, new t());
        f104150a.put(InterfaceC15100a.f107972P0, new t());
        f104150a.put(InterfaceC15100a.f107968O0, new t());
        f104150a.put(InterfaceC15100a.f107996V0, new t());
        f104150a.put(InterfaceC15100a.f107992U0, new t());
        f104150a.put(InterfaceC15100a.f107980R0, new t());
        f104150a.put(InterfaceC15100a.f107976Q0, new t());
        f104150a.put(InterfaceC15100a.f108004X0, new t());
        f104150a.put(InterfaceC15100a.f108000W0, new t());
        f104150a.put(new C14549x("1.3.9999.6.4.10"), new t());
        f104150a.put(InterfaceC15100a.f107969O1, new c());
        f104150a.put(InterfaceC15100a.f107973P1, new c());
        f104150a.put(InterfaceC15100a.f107977Q1, new c());
        f104150a.put(InterfaceC15100a.f107981R1, new c());
        f104150a.put(InterfaceC15100a.f107985S1, new c());
        f104150a.put(InterfaceC15100a.f107989T1, new c());
        f104150a.put(InterfaceC15100a.f107993U1, new c());
        f104150a.put(InterfaceC15100a.f107997V1, new c());
        f104150a.put(InterfaceC15100a.f108001W1, new c());
        f104150a.put(InterfaceC15100a.f108005X1, new c());
        f104150a.put(InterfaceC15100a.f108013Z1, new f());
        f104150a.put(InterfaceC15100a.f108018a2, new f());
        f104150a.put(InterfaceC15100a.f108023b2, new f());
        f104150a.put(InterfaceC15100a.f108028c2, new f());
        f104150a.put(InterfaceC15100a.f108033d2, new f());
        f104150a.put(InterfaceC15100a.f108038e2, new f());
        f104150a.put(InterfaceC15100a.f108048g2, new q());
        f104150a.put(InterfaceC15100a.f108053h2, new q());
        f104150a.put(InterfaceC15100a.f108058i2, new q());
        f104150a.put(InterfaceC15100a.f108063j2, new q());
        f104150a.put(InterfaceC15100a.f108068k2, new q());
        f104150a.put(InterfaceC15100a.f108073l2, new q());
        f104150a.put(InterfaceC15100a.f108078m2, new q());
        f104150a.put(InterfaceC15100a.f108083n2, new q());
        f104150a.put(InterfaceC15100a.f108088o2, new q());
        f104150a.put(InterfaceC15100a.f108093p2, new q());
        f104150a.put(InterfaceC15100a.f108098q2, new q());
        f104150a.put(InterfaceC15100a.f108103r2, new q());
        f104150a.put(InterfaceC15100a.f108108s2, new q());
        f104150a.put(InterfaceC15100a.f108112t2, new q());
        f104150a.put(InterfaceC15100a.f108116u2, new q());
        f104150a.put(InterfaceC15100a.f108120v2, new q());
        f104150a.put(InterfaceC15100a.f108124w2, new q());
        f104150a.put(InterfaceC15100a.f108128x2, new q());
        f104150a.put(InterfaceC15100a.f108017a1, new n());
        f104150a.put(InterfaceC15100a.f108022b1, new n());
        f104150a.put(InterfaceC15100a.f108027c1, new n());
        f104150a.put(InterfaceC15100a.f108032d1, new n());
        f104150a.put(InterfaceC15100a.f108037e1, new n());
        f104150a.put(InterfaceC15100a.f108042f1, new n());
        f104150a.put(InterfaceC15100a.f108047g1, new n());
        f104150a.put(InterfaceC15100a.f108052h1, new n());
        f104150a.put(InterfaceC15100a.f108057i1, new n());
        f104150a.put(InterfaceC15100a.f108062j1, new n());
        f104150a.put(InterfaceC15100a.f108067k1, new n());
        f104150a.put(InterfaceC15100a.f108072l1, new n());
        f104150a.put(InterfaceC15100a.f107946I2, new m());
        f104150a.put(InterfaceC15100a.f107950J2, new m());
        f104150a.put(InterfaceC15100a.f107954K2, new m());
        f104150a.put(InterfaceC15100a.f107962M2, new m());
        f104150a.put(InterfaceC15100a.f107958L2, new m());
        f104150a.put(InterfaceC15100a.f107966N2, new m());
        f104150a.put(InterfaceC15100a.f108102r1, new e());
        f104150a.put(InterfaceC15100a.f108107s1, new e());
        f104150a.put(InterfaceC15100a.f107974P2, new h());
        f104150a.put(InterfaceC15100a.f107978Q2, new h());
        f104150a.put(InterfaceC15100a.f107982R2, new h());
        f104150a.put(InterfaceC15100a.f107986S2, new h());
        f104150a.put(InterfaceC15100a.f107990T2, new h());
        f104150a.put(InterfaceC15100a.f107994U2, new h());
        f104150a.put(InterfaceC15100a.f108006X2, new l());
        f104150a.put(InterfaceC15100a.f108010Y2, new l());
        f104150a.put(InterfaceC15100a.f108014Z2, new l());
        f104150a.put(InterfaceC15100a.f108019a3, new l());
        f104150a.put(InterfaceC15100a.f108024b3, new l());
        f104150a.put(InterfaceC15100a.f108029c3, new l());
        f104150a.put(InterfaceC15100a.f108039e3, new r());
        f104150a.put(InterfaceC15100a.f108044f3, new r());
        f104150a.put(InterfaceC15100a.f108049g3, new r());
        f104150a.put(InterfaceC15100a.f108054h3, new r());
        f104150a.put(InterfaceC15100a.f108059i3, new r());
        f104150a.put(InterfaceC15100a.f108064j3, new r());
        f104150a.put(InterfaceC15100a.f108115u1, new C1959d());
        f104150a.put(InterfaceC15100a.f108119v1, new C1959d());
        f104150a.put(InterfaceC15100a.f108123w1, new C1959d());
        f104150a.put(InterfaceC15100a.f108127x1, new C1959d());
        f104150a.put(InterfaceC15100a.f108131y1, new C1959d());
        f104150a.put(InterfaceC15100a.f108135z1, new C1959d());
        f104150a.put(InterfaceC15100a.f108074l3, new b());
        f104150a.put(InterfaceC15100a.f108079m3, new b());
        f104150a.put(InterfaceC15100a.f108084n3, new b());
        f104150a.put(InterfaceC15100a.f108094p3, new g());
        f104150a.put(InterfaceC15100a.f108099q3, new g());
        f104150a.put(InterfaceC15100a.f108104r3, new g());
        f104150a.put(InterfaceC15100a.f107917B1, new p());
        f104150a.put(InterfaceC15100a.f107921C1, new p());
        f104150a.put(InterfaceC15100a.f107925D1, new p());
        f104150a.put(InterfaceC15100a.f107929E1, new p());
        f104150a.put(InterfaceC15100a.f107933F1, new p());
        f104150a.put(InterfaceC15100a.f107937G1, new p());
    }

    public static C3335c a(h0 h0Var) throws IOException {
        if (h0Var != null) {
            return b(h0Var, null);
        }
        throw new IllegalArgumentException("keyInfo argument null");
    }

    public static C3335c b(h0 h0Var, Object obj) throws IOException {
        if (h0Var == null) {
            throw new IllegalArgumentException("keyInfo argument null");
        }
        C13486b u10 = h0Var.u();
        u uVar = (u) f104150a.get(u10.u());
        if (uVar != null) {
            return uVar.a(h0Var, obj);
        }
        throw new IOException("algorithm identifier in public key not recognised: " + ((Object) u10.u()));
    }

    public static C3335c c(InputStream inputStream) throws IOException {
        return a(h0.w(new oh.r(inputStream).k()));
    }

    public static C3335c d(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("keyInfoData array null");
        }
        if (bArr.length != 0) {
            return a(h0.w(B.B(bArr)));
        }
        throw new IllegalArgumentException("keyInfoData array empty");
    }
}
