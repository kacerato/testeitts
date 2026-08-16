package xi;

import hi.C13478B;
import hi.C13481E;
import hi.l0;
import hi.m0;
import hi.n0;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Date;
import li.C14139a;
import li.C14140b;
import li.C14143e;
import org.bouncycastle.util.r;

public class C16116b implements r {

    public final C14139a f129816b;

    public final C14140b f129817c;

    public final BigInteger f129818d;

    public final Date f129819e;

    public final C14143e f129820f;

    public final Collection f129821g;

    public final Collection f129822h;

    public C16116b(C14139a c14139a, C14140b c14140b, BigInteger bigInteger, Date date, C14143e c14143e, Collection collection, Collection collection2) {
        this.f129816b = c14139a;
        this.f129817c = c14140b;
        this.f129818d = bigInteger;
        this.f129819e = date;
        this.f129820f = c14143e;
        this.f129821g = collection;
        this.f129822h = collection2;
    }

    @Override
    public boolean Z2(Object obj) {
        C13478B d10;
        n0[] v10;
        if (!(obj instanceof C14143e)) {
            return false;
        }
        C14143e c14143e = (C14143e) obj;
        C14143e c14143e2 = this.f129820f;
        if (c14143e2 != null && !c14143e2.equals(c14143e)) {
            return false;
        }
        if (this.f129818d != null && !c14143e.m().equals(this.f129818d)) {
            return false;
        }
        if (this.f129816b != null && !c14143e.g().equals(this.f129816b)) {
            return false;
        }
        if (this.f129817c != null && !c14143e.h().equals(this.f129817c)) {
            return false;
        }
        Date date = this.f129819e;
        if (date != null && !c14143e.u(date)) {
            return false;
        }
        if ((!this.f129821g.isEmpty() || !this.f129822h.isEmpty()) && (d10 = c14143e.d(C13478B.f90523I)) != null) {
            try {
                v10 = m0.u(d10.A()).v();
                if (!this.f129821g.isEmpty()) {
                    boolean z10 = false;
                    for (n0 n0Var : v10) {
                        l0[] v11 = n0Var.v();
                        int i10 = 0;
                        while (true) {
                            if (i10 >= v11.length) {
                                break;
                            }
                            if (this.f129821g.contains(C13481E.v(v11[i10].x()))) {
                                z10 = true;
                                break;
                            }
                            i10++;
                        }
                    }
                    if (!z10) {
                        return false;
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            if (!this.f129822h.isEmpty()) {
                boolean z11 = false;
                for (n0 n0Var2 : v10) {
                    l0[] v12 = n0Var2.v();
                    int i11 = 0;
                    while (true) {
                        if (i11 >= v12.length) {
                            break;
                        }
                        if (this.f129822h.contains(C13481E.v(v12[i11].v()))) {
                            z11 = true;
                            break;
                        }
                        i11++;
                    }
                }
                if (!z11) {
                    return false;
                }
            }
        }
        return true;
    }

    public C14143e a() {
        return this.f129820f;
    }

    public Date b() {
        if (this.f129819e != null) {
            return new Date(this.f129819e.getTime());
        }
        return null;
    }

    public C14139a c() {
        return this.f129816b;
    }

    @Override
    public Object clone() {
        return new C16116b(this.f129816b, this.f129817c, this.f129818d, this.f129819e, this.f129820f, this.f129821g, this.f129822h);
    }

    public C14140b d() {
        return this.f129817c;
    }

    public BigInteger e() {
        return this.f129818d;
    }

    public Collection f() {
        return this.f129822h;
    }

    public Collection g() {
        return this.f129821g;
    }
}
