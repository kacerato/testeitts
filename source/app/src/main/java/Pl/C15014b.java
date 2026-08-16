package pl;

import Xh.t;
import Xh.v;
import Xi.C3335c;
import Xk.C3376a;
import Xk.m;
import Xk.s;
import Xk.u;
import Xk.w;
import Xk.x;
import Xk.z;
import al.k;
import bl.C3904e;
import bl.C3905f;
import cl.j;
import dl.C12964n;
import el.i;
import gl.C13398k;
import hi.C13486b;
import il.h;
import java.io.IOException;
import java.io.InputStream;
import jl.o;
import nl.C14465i;
import oh.AbstractC14508c;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14516g;
import oh.r;
import ol.C14611t;
import ol.C14612u;
import org.bouncycastle.util.p;
import pl.C15016d;
import qh.InterfaceC15100a;
import ql.C15119A;
import ql.C15123a;
import ql.C15124b;
import ql.H;
import ql.I;
import ql.O;

public class C15014b {
    public static short[] a(byte[] bArr) {
        int length = bArr.length / 2;
        short[] sArr = new short[length];
        for (int i10 = 0; i10 != length; i10++) {
            sArr[i10] = p.C(bArr, i10 * 2);
        }
        return sArr;
    }

    public static C3335c b(v vVar) throws IOException {
        if (vVar == null) {
            throw new IllegalArgumentException("keyInfo array null");
        }
        C13486b y10 = vVar.y();
        C14549x u10 = y10.u();
        if (u10.O(m.f29550W)) {
            return new Tl.e(C15019g.y(y10), AbstractC14551y.F(vVar.E()).H());
        }
        if (u10.A(m.f29580r)) {
            return new C14465i(AbstractC14551y.F(vVar.E()).H(), C15019g.G(s.u(y10.x())));
        }
        if (u10.A(m.f29584v)) {
            return new hl.g(a(AbstractC14551y.F(vVar.E()).H()));
        }
        if (u10.A(t.f29047Q2)) {
            byte[] H10 = AbstractC14551y.F(vVar.E()).H();
            AbstractC14508c A10 = vVar.A();
            if (p.a(H10, 0) != 1) {
                if (A10 != null) {
                    return org.bouncycastle.pqc.crypto.lms.f.h(org.bouncycastle.util.a.X(H10, 4, H10.length), A10.J());
                }
                return org.bouncycastle.pqc.crypto.lms.f.g(org.bouncycastle.util.a.X(H10, 4, H10.length));
            }
            if (A10 == null) {
                return org.bouncycastle.pqc.crypto.lms.v.k(org.bouncycastle.util.a.X(H10, 4, H10.length));
            }
            byte[] J10 = A10.J();
            return org.bouncycastle.pqc.crypto.lms.v.l(org.bouncycastle.util.a.X(H10, 4, H10.length), org.bouncycastle.util.a.X(J10, 4, J10.length));
        }
        if (u10.O(InterfaceC15100a.f108016a0) || u10.O(InterfaceC15100a.f107956L0)) {
            C14611t I10 = C15019g.I(u10);
            InterfaceC14516g E10 = vVar.E();
            if (!(E10 instanceof E)) {
                return new C14612u(I10, AbstractC14551y.F(E10).H());
            }
            Xk.t u11 = Xk.t.u(E10);
            u v10 = u11.v();
            return new C14612u(I10, u11.y(), u11.x(), v10.x(), v10.v());
        }
        if (u10.O(InterfaceC15100a.f108008Y0)) {
            return new kl.m(C15019g.w(u10), AbstractC14551y.F(vVar.E()).H());
        }
        if (u10.O(InterfaceC15100a.f107965N1)) {
            C3376a z10 = C3376a.z(vVar.E());
            return new k(C15019g.q(u10), z10.x(), z10.v(), z10.y(), z10.u(), z10.B());
        }
        if (u10.O(InterfaceC15100a.f108009Y1)) {
            return new i(C15019g.h(u10), AbstractC14551y.F(vVar.E()).H());
        }
        if (u10.O(InterfaceC15100a.f108043f2)) {
            return new ml.i(C15019g.C(u10), AbstractC14551y.F(vVar.E()).H());
        }
        if (u10.O(InterfaceC15100a.f107942H2)) {
            return new h(C15019g.s(u10), AbstractC14551y.F(vVar.E()).H());
        }
        if (u10.O(InterfaceC15100a.f107970O2)) {
            return new j(C15019g.o(u10), AbstractC14551y.F(vVar.E()).H());
        }
        if (u10.O(InterfaceC15100a.f108002W2)) {
            E G10 = E.G(vVar.E());
            return new jl.g(C15019g.u(u10), AbstractC14551y.F(G10.I(0)).H(), AbstractC14551y.F(G10.I(1)).H(), AbstractC14551y.F(G10.I(2)).H(), AbstractC14551y.F(G10.I(3)).H());
        }
        if (u10.O(InterfaceC15100a.f108034d3)) {
            E G11 = E.G(vVar.E());
            return new o(C15019g.E(u10), AbstractC14551y.F(G11.I(0)).H(), AbstractC14551y.F(G11.I(1)).H(), AbstractC14551y.F(G11.I(2)).H(), AbstractC14551y.F(G11.I(3)).H(), AbstractC14551y.F(G11.I(4)).H());
        }
        if (u10.A(InterfaceC15100a.f108115u1) || u10.A(InterfaceC15100a.f108119v1) || u10.A(InterfaceC15100a.f108123w1)) {
            InterfaceC14516g E11 = vVar.E();
            C3904e d10 = C15019g.d(u10);
            if (!(E11 instanceof E)) {
                if (!(E11 instanceof C0)) {
                    throw new IOException("not supported");
                }
                byte[] H11 = AbstractC14551y.F(E11).H();
                return vVar.A() != null ? new C3905f(d10, H11, C15016d.C1959d.b(d10, vVar.A())) : new C3905f(d10, H11, null);
            }
            E G12 = E.G(E11);
            int O10 = C14539s.F(G12.I(0)).O();
            if (O10 == 0) {
                if (vVar.A() != null) {
                    return new C3905f(d10, AbstractC14508c.H(G12.I(1)).J(), AbstractC14508c.H(G12.I(2)).J(), AbstractC14508c.H(G12.I(3)).J(), AbstractC14508c.H(G12.I(4)).J(), AbstractC14508c.H(G12.I(5)).J(), AbstractC14508c.H(G12.I(6)).J(), C15016d.C1959d.b(d10, vVar.A()).g());
                }
                return new C3905f(d10, AbstractC14508c.H(G12.I(1)).J(), AbstractC14508c.H(G12.I(2)).J(), AbstractC14508c.H(G12.I(3)).J(), AbstractC14508c.H(G12.I(4)).J(), AbstractC14508c.H(G12.I(5)).J(), AbstractC14508c.H(G12.I(6)).J(), null);
            }
            throw new IOException("unknown private key version: " + O10);
        }
        if (u10.A(InterfaceC15100a.f108102r1) || u10.A(InterfaceC15100a.f108107s1)) {
            Xk.c w10 = Xk.c.w(vVar.E());
            return new C12964n(C15019g.f(u10), w10.z(), w10.v(), w10.u(), w10.x().u());
        }
        if (u10.O(InterfaceC15100a.f108069k3)) {
            byte[] H12 = AbstractC14551y.F(vVar.E()).H();
            Zk.g b10 = C15019g.b(u10);
            return new Zk.h(b10, org.bouncycastle.util.a.X(H12, 0, b10.g()), org.bouncycastle.util.a.X(H12, b10.g(), b10.g() * 2), org.bouncycastle.util.a.X(H12, b10.g() * 2, H12.length));
        }
        if (u10.O(InterfaceC15100a.f108089o3)) {
            return new C13398k(C15019g.m(u10), AbstractC14551y.F(vVar.E()).H());
        }
        if (u10.O(InterfaceC15100a.f107913A1)) {
            return new ll.i(C15019g.A(u10), AbstractC14551y.F(vVar.E()).H());
        }
        if (u10.A(m.f29585w)) {
            Xk.v v11 = Xk.v.v(y10.x());
            C14549x u12 = v11.x().u();
            z w11 = z.w(vVar.E());
            try {
                I.b p10 = new I.b(new H(v11.u(), C15019g.j(u12))).l(w11.v()).r(w11.B()).q(w11.A()).o(w11.y()).p(w11.z());
                if (w11.C() != 0) {
                    p10.m(w11.x());
                }
                if (w11.u() != null) {
                    p10.k(((C15123a) O.g(w11.u(), C15123a.class)).o(u12));
                }
                return p10.j();
            } catch (ClassNotFoundException e10) {
                throw new IOException("ClassNotFoundException processing BDS state: " + e10.getMessage());
            }
        }
        if (!u10.A(m.f29533F)) {
            if (!u10.A(m.f29576n)) {
                throw new RuntimeException("algorithm identifier in private key not recognised");
            }
            Xk.i y11 = Xk.i.y(vVar.E());
            return new Rl.g(y11.A(), y11.z(), y11.v(), y11.x(), y11.B(), C15019g.k(y11.u().u()));
        }
        w v12 = w.v(y10.x());
        C14549x u13 = v12.y().u();
        try {
            x w12 = x.w(vVar.E());
            C15119A.b q10 = new C15119A.b(new ql.z(v12.u(), v12.x(), C15019g.j(u13))).m(w12.v()).s(w12.B()).r(w12.A()).p(w12.y()).q(w12.z());
            if (w12.C() != 0) {
                q10.n(w12.x());
            }
            if (w12.u() != null) {
                q10.l(((C15124b) O.g(w12.u(), C15124b.class)).h(u13));
            }
            return q10.k();
        } catch (ClassNotFoundException e11) {
            throw new IOException("ClassNotFoundException processing BDS state: " + e11.getMessage());
        }
    }

    public static C3335c c(InputStream inputStream) throws IOException {
        return b(v.v(new r(inputStream).k()));
    }

    public static C3335c d(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("privateKeyInfoData array null");
        }
        if (bArr.length != 0) {
            return b(v.v(B.B(bArr)));
        }
        throw new IllegalArgumentException("privateKeyInfoData array empty");
    }
}
