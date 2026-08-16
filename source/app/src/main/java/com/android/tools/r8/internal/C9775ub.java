package com.android.tools.r8.internal;

public final class C9775ub {

    public static final boolean f52884c = true;

    public AbstractC9441sb f52885a;

    public B60 f52886b;

    public static C8273lb a(C8273lb c8273lb, C8273lb c8273lb2, com.android.tools.r8.graph.H5 h52) {
        if (c8273lb.f50010d.length != c8273lb2.f50010d.length) {
            throw new C5325If(h52.f36317b.f36244d, "Different stack heights at jump target: " + c8273lb.f50010d.length + " != " + c8273lb2.f50010d.length, null);
        }
        int i10 = 0;
        while (true) {
            AbstractC9274rb[] abstractC9274rbArr = c8273lb.f50010d;
            if (i10 >= abstractC9274rbArr.length) {
                return c8273lb;
            }
            if (abstractC9274rbArr[i10].a() != c8273lb2.f50010d[i10].a()) {
                throw new C5325If(h52.f36317b.f36244d, "Incompatible types in stack position " + i10 + ": " + ((Object) c8273lb.f50010d[i10]) + " and " + ((Object) c8273lb2.f50010d[i10]), null);
            }
            i10++;
        }
    }

    public final String toString() {
        AbstractC9441sb abstractC9441sb = this.f52885a;
        C8273lb c8273lb = new C8273lb(abstractC9441sb.b() + 1, abstractC9441sb.d());
        abstractC9441sb.a(c8273lb);
        return c8273lb.toString();
    }

    public final C8774ob a(AbstractC9274rb abstractC9274rb) {
        a(new C8607nb(this.f52885a, abstractC9274rb));
        return this.f52885a.c();
    }

    public final void a(AbstractC9441sb abstractC9441sb) {
        if (abstractC9441sb.f52388b >= 4) {
            C8273lb c8273lb = new C8273lb(abstractC9441sb.b() + 1, abstractC9441sb.d());
            abstractC9441sb.a(c8273lb);
            abstractC9441sb = c8273lb;
        }
        this.f52885a = abstractC9441sb;
    }

    public final C8774ob a() {
        C8774ob c10 = this.f52885a.c();
        a(new C8440mb(this.f52885a));
        return c10;
    }

    public final C8774ob a(int i10, com.android.tools.r8.graph.M2 m22) {
        a(new C9608tb(this.f52885a, i10, new C9108qb(m22)));
        return this.f52885a.a(i10);
    }
}
