package li;

import Qk.p;
import Qk.q;
import fi.C13228d;
import hi.C13481E;
import hi.C13482F;
import hi.C13486b;
import hi.I;
import hi.K;
import hi.S;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import org.bouncycastle.util.r;

public class C14139a implements r {

    public static q f96462c;

    public final I f96463b;

    public C14139a(int i10, C14549x c14549x, C14549x c14549x2, byte[] bArr) {
        this.f96463b = new I(new S(i10, c14549x2, new C13486b(c14549x), org.bouncycastle.util.a.p(bArr)));
    }

    public static void k(q qVar) {
        f96462c = qVar;
    }

    @Override
    public boolean Z2(Object obj) {
        if (!(obj instanceof C14146h)) {
            return false;
        }
        C14146h c14146h = (C14146h) obj;
        if (this.f96463b.u() != null) {
            return this.f96463b.u().z().L(c14146h.i()) && j(c14146h.e(), this.f96463b.u().x());
        }
        if (this.f96463b.v() != null && j(c14146h.l(), this.f96463b.v())) {
            return true;
        }
        if (this.f96463b.x() != null) {
            try {
                p a10 = f96462c.a(this.f96463b.x().u());
                OutputStream outputStream = a10.getOutputStream();
                int c10 = c();
                if (c10 == 0) {
                    outputStream.write(c14146h.m().getEncoded());
                } else if (c10 == 1) {
                    outputStream.write(c14146h.getEncoded());
                }
                outputStream.close();
                if (org.bouncycastle.util.a.g(a10.b(), f())) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public final C13482F a(C13228d c13228d) {
        return new C13482F(new C13481E(c13228d));
    }

    public C13486b b() {
        if (this.f96463b.x() != null) {
            return this.f96463b.x().u();
        }
        return null;
    }

    public int c() {
        if (this.f96463b.x() != null) {
            return this.f96463b.x().v().L();
        }
        return -1;
    }

    @Override
    public Object clone() {
        return new C14139a((E) this.f96463b.r());
    }

    public C13228d[] d() {
        if (this.f96463b.v() != null) {
            return h(this.f96463b.v().y());
        }
        return null;
    }

    public C13228d[] e() {
        if (this.f96463b.u() != null) {
            return h(this.f96463b.u().x().y());
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14139a) {
            return this.f96463b.equals(((C14139a) obj).f96463b);
        }
        return false;
    }

    public byte[] f() {
        if (this.f96463b.x() != null) {
            return this.f96463b.x().y().F();
        }
        return null;
    }

    public C14549x g() {
        if (this.f96463b.x() == null) {
            return null;
        }
        new C14549x(this.f96463b.x().z().J());
        return null;
    }

    public final C13228d[] h(C13481E[] c13481eArr) {
        ArrayList arrayList = new ArrayList(c13481eArr.length);
        for (int i10 = 0; i10 != c13481eArr.length; i10++) {
            if (c13481eArr[i10].g() == 4) {
                arrayList.add(C13228d.x(c13481eArr[i10].x()));
            }
        }
        return (C13228d[]) arrayList.toArray(new C13228d[arrayList.size()]);
    }

    public int hashCode() {
        return this.f96463b.hashCode();
    }

    public BigInteger i() {
        if (this.f96463b.u() != null) {
            return this.f96463b.u().z().I();
        }
        return null;
    }

    public final boolean j(C13228d c13228d, C13482F c13482f) {
        C13481E[] y10 = c13482f.y();
        for (int i10 = 0; i10 != y10.length; i10++) {
            C13481E c13481e = y10[i10];
            if (c13481e.g() == 4 && C13228d.x(c13481e.x()).equals(c13228d)) {
                return true;
            }
        }
        return false;
    }

    public C14139a(C13228d c13228d) {
        this.f96463b = new I(a(c13228d));
    }

    public C14139a(C13228d c13228d, BigInteger bigInteger) {
        this.f96463b = new I(new K(a(c13228d), new C14539s(bigInteger)));
    }

    public C14139a(C14146h c14146h) {
        this.f96463b = new I(new K(a(c14146h.e()), new C14539s(c14146h.i())));
    }

    public C14139a(E e10) {
        this.f96463b = I.w(e10);
    }
}
