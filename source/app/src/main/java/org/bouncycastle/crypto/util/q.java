package org.bouncycastle.crypto.util;

import Xh.A;
import Xi.B;
import Xi.C3335c;
import Xi.C3363q;
import Xi.C3366s;
import Xi.C3371v;
import Xi.C3375z;
import Xi.F0;
import Xi.G;
import Xi.H;
import Xi.K;
import Xi.M;
import Xi.O0;
import Xi.P;
import Xi.R0;
import Xi.T;
import Xi.W;
import Xi.Y;
import di.AbstractC12926e;
import di.C12922a;
import di.C12923b;
import di.C12924c;
import di.C12925d;
import di.InterfaceC12928g;
import hi.C13486b;
import hi.C13508u;
import hi.E0;
import hi.h0;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import jk.AbstractC13875e;
import ki.C13987b;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14516g;
import qj.InterfaceC15115a;
import yh.InterfaceC16192a;

public class q {

    public static Map f101090a;

    public static class b extends m {
        public b() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            Xh.h v10 = Xh.h.v(h0Var.u().x());
            C14539s c14539s = (C14539s) h0Var.A();
            BigInteger x10 = v10.x();
            return new C3366s(c14539s.I(), new C3363q(v10.y(), v10.u(), null, x10 == null ? 0 : x10.intValue()));
        }
    }

    public static class c extends m {
        public c() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            BigInteger x10 = C13987b.u(h0Var.A()).x();
            ki.d v10 = ki.d.v(h0Var.u().x());
            BigInteger z10 = v10.z();
            BigInteger u10 = v10.u();
            BigInteger A10 = v10.A();
            BigInteger x11 = v10.x() != null ? v10.x() : null;
            ki.h B10 = v10.B();
            return new C3366s(x10, new C3363q(z10, u10, A10, x11, B10 != null ? new C3371v(B10.y(), B10.x().intValue()) : null));
        }
    }

    public static class d extends m {
        public d() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            C3375z c3375z;
            C14539s c14539s = (C14539s) h0Var.A();
            InterfaceC14516g x10 = h0Var.u().x();
            if (x10 != null) {
                C13508u v10 = C13508u.v(x10.r());
                c3375z = new C3375z(v10.x(), v10.y(), v10.u());
            } else {
                c3375z = null;
            }
            return new B(c14539s.I(), c3375z);
        }
    }

    public static class e extends m {
        public e() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            G g10;
            C13486b u10 = h0Var.u();
            C14549x u11 = u10.u();
            C12925d y10 = C12925d.y(u10.x());
            try {
                byte[] p10 = org.bouncycastle.util.a.p(((AbstractC14551y) h0Var.A()).H());
                C14549x c14549x = InterfaceC12928g.f84698b;
                if (u11.A(c14549x)) {
                    b(p10);
                }
                if (y10.A()) {
                    g10 = C12924c.a(y10.z());
                } else {
                    C12923b x10 = y10.x();
                    byte[] v10 = x10.v();
                    if (u11.A(c14549x)) {
                        b(v10);
                    }
                    BigInteger bigInteger = new BigInteger(1, v10);
                    C12922a x11 = x10.x();
                    AbstractC13875e.C1828e c1828e = new AbstractC13875e.C1828e(x11.z(), x11.v(), x11.x(), x11.y(), x10.u(), bigInteger, (BigInteger) null, (BigInteger) null);
                    byte[] y11 = x10.y();
                    if (u11.A(c14549x)) {
                        b(y11);
                    }
                    g10 = new G(c1828e, AbstractC12926e.a(c1828e, y11), x10.A());
                }
                return new M(AbstractC12926e.a(g10.a(), p10), g10);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering DSTU public key");
            }
        }

        public final void b(byte[] bArr) {
            for (int i10 = 0; i10 < bArr.length / 2; i10++) {
                byte b10 = bArr[i10];
                bArr[i10] = bArr[(bArr.length - 1) - i10];
                bArr[(bArr.length - 1) - i10] = b10;
            }
        }
    }

    public static class f extends m {
        public f() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) {
            G g10;
            byte b10;
            ki.j u10 = ki.j.u(h0Var.u().x());
            if (u10.z()) {
                C14549x c14549x = (C14549x) u10.x();
                ki.l l10 = Ji.a.l(c14549x);
                if (l10 == null) {
                    l10 = ki.e.d(c14549x);
                }
                g10 = new K(c14549x, l10);
            } else {
                g10 = u10.y() ? (G) obj : new G(ki.l.B(u10.x()));
            }
            byte[] F10 = h0Var.z().F();
            AbstractC14551y c02 = new C0(F10);
            if (F10[0] == 4 && F10[1] == F10.length - 2 && (((b10 = F10[2]) == 2 || b10 == 3) && new ki.q().a(g10.a()) >= F10.length - 3)) {
                try {
                    c02 = (AbstractC14551y) oh.B.B(F10);
                } catch (IOException unused) {
                    throw new IllegalArgumentException("error recovering public key");
                }
            }
            return new M(new ki.n(g10.a(), c02).u(), g10);
        }
    }

    public static class g extends m {
        public g() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) {
            return new P(q.f(h0Var, obj));
        }
    }

    public static class h extends m {
        public h() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) {
            return new T(q.f(h0Var, obj));
        }
    }

    public static class i extends m {
        public i() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            Bj.a v10 = Bj.a.v(h0Var.u().x());
            return new Y(((C14539s) h0Var.A()).I(), new W(v10.x(), v10.u()));
        }
    }

    public static class j extends m {
        public j() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) {
            yh.g w10 = yh.g.w(h0Var.u().x());
            C14549x y10 = w10.y();
            H h10 = new H(new K(y10, yh.b.k(y10)), y10, w10.u(), w10.v());
            try {
                byte[] H10 = ((AbstractC14551y) h0Var.A()).H();
                if (H10.length != 64) {
                    throw new IllegalArgumentException("invalid length for GOST3410_2001 public key");
                }
                byte[] bArr = new byte[65];
                bArr[0] = 4;
                for (int i10 = 1; i10 <= 32; i10++) {
                    bArr[i10] = H10[32 - i10];
                    bArr[i10 + 32] = H10[64 - i10];
                }
                return new M(h10.a().l(bArr), h10);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering GOST3410_2001 public key");
            }
        }
    }

    public static class k extends m {
        public k() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) {
            C13486b u10 = h0Var.u();
            C14549x u11 = u10.u();
            yh.g w10 = yh.g.w(u10.x());
            C14549x y10 = w10.y();
            H h10 = new H(new K(y10, yh.b.k(y10)), y10, w10.u(), w10.v());
            try {
                AbstractC14551y abstractC14551y = (AbstractC14551y) h0Var.A();
                int i10 = u11.A(Cj.a.f4463h) ? 64 : 32;
                int i11 = i10 * 2;
                byte[] H10 = abstractC14551y.H();
                if (H10.length != i11) {
                    throw new IllegalArgumentException("invalid length for GOST3410_2012 public key");
                }
                byte[] bArr = new byte[i11 + 1];
                bArr[0] = 4;
                for (int i12 = 1; i12 <= i10; i12++) {
                    bArr[i12] = H10[i10 - i12];
                    bArr[i12 + i10] = H10[i11 - i12];
                }
                return new M(h10.a().l(bArr), h10);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering GOST3410_2012 public key");
            }
        }
    }

    public static class l extends m {
        public l() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) throws IOException {
            A u10 = A.u(h0Var.A());
            return new F0(false, u10.x(), u10.y());
        }
    }

    public static abstract class m {
        public m() {
        }

        public abstract C3335c a(h0 h0Var, Object obj) throws IOException;
    }

    public static class n extends m {
        public n() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) {
            return new O0(q.f(h0Var, obj));
        }
    }

    public static class o extends m {
        public o() {
            super();
        }

        @Override
        public C3335c a(h0 h0Var, Object obj) {
            return new R0(q.f(h0Var, obj));
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f101090a = hashMap;
        hashMap.put(Xh.t.f29017H0, new l());
        f101090a.put(Xh.t.f29045Q0, new l());
        f101090a.put(E0.f90637W4, new l());
        f101090a.put(ki.r.f95361z6, new c());
        f101090a.put(Xh.t.f29073Y0, new b());
        f101090a.put(ki.r.f95349s6, new d());
        f101090a.put(Bj.b.f1912j, new d());
        f101090a.put(Bj.b.f1914l, new i());
        f101090a.put(ki.r.f95305I5, new f());
        f101090a.put(InterfaceC16192a.f130281m, new j());
        f101090a.put(Cj.a.f4462g, new k());
        f101090a.put(Cj.a.f4463h, new k());
        f101090a.put(InterfaceC12928g.f84699c, new e());
        f101090a.put(InterfaceC12928g.f84698b, new e());
        f101090a.put(InterfaceC15115a.f108207b, new n());
        f101090a.put(InterfaceC15115a.f108208c, new o());
        f101090a.put(InterfaceC15115a.f108209d, new g());
        f101090a.put(InterfaceC15115a.f108210e, new h());
    }

    public static C3335c b(h0 h0Var) throws IOException {
        if (h0Var != null) {
            return c(h0Var, null);
        }
        throw new IllegalArgumentException("keyInfo argument null");
    }

    public static C3335c c(h0 h0Var, Object obj) throws IOException {
        if (h0Var == null) {
            throw new IllegalArgumentException("keyInfo argument null");
        }
        C13486b u10 = h0Var.u();
        m mVar = (m) f101090a.get(u10.u());
        if (mVar != null) {
            return mVar.a(h0Var, obj);
        }
        throw new IOException("algorithm identifier in public key not recognised: " + ((Object) u10.u()));
    }

    public static C3335c d(InputStream inputStream) throws IOException {
        return b(h0.w(new oh.r(inputStream).k()));
    }

    public static C3335c e(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("keyInfoData array null");
        }
        if (bArr.length != 0) {
            return b(h0.w(oh.B.B(bArr)));
        }
        throw new IllegalArgumentException("keyInfoData array empty");
    }

    public static byte[] f(h0 h0Var, Object obj) {
        return h0Var.z().J();
    }
}
