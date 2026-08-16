package qh;

import fi.C13228d;
import hi.C13481E;
import hi.C13482F;
import hi.C13510w;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class C15105f extends AbstractC14545v {

    public final C13510w f108146b;

    public final C13481E f108147c;

    public C13228d f108148d;

    public C13482F f108149e;

    public C15105f(C13510w c13510w, C13481E c13481e) {
        this(c13510w, c13481e, null, null);
    }

    public static C15105f z(Object obj) {
        if (obj instanceof C15105f) {
            return (C15105f) obj;
        }
        if (obj != null) {
            return new C15105f(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f108146b);
        c14518h.a(this.f108147c);
        C13228d c13228d = this.f108148d;
        if (c13228d != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c13228d));
        }
        C13482F c13482f = this.f108149e;
        if (c13482f != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c13482f));
        }
        return new G0(c14518h);
    }

    public C13482F u() {
        return this.f108149e;
    }

    public C13228d v() {
        return this.f108148d;
    }

    public C13481E x() {
        return this.f108147c;
    }

    public C13510w y() {
        return this.f108146b;
    }

    public C15105f(C13510w c13510w, C13481E c13481e, C13228d c13228d, C13482F c13482f) {
        this.f108146b = c13510w;
        this.f108147c = c13481e;
        this.f108148d = c13228d;
        this.f108149e = c13482f;
    }

    public C15105f(E e10) {
        this.f108146b = C13510w.w(e10.I(0));
        this.f108147c = C13481E.v(e10.I(1));
        if (e10.size() > 2) {
            for (int i10 = 2; i10 != e10.size(); i10++) {
                M R10 = M.R(e10.I(i10));
                int g10 = R10.g();
                if (g10 == 0) {
                    this.f108148d = C13228d.y(R10, false);
                } else {
                    if (g10 != 1) {
                        throw new IllegalArgumentException("unknown tag in tagged field");
                    }
                    this.f108149e = C13482F.x(R10, false);
                }
            }
        }
    }
}
