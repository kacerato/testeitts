package com.android.tools.r8.internal;

public final class C8607nb extends AbstractC9441sb {

    public static final boolean f50991d = true;

    public final C8774ob f50992c;

    public C8607nb(AbstractC9441sb abstractC9441sb, AbstractC9274rb abstractC9274rb) {
        super(abstractC9441sb.f52388b + 1, abstractC9441sb);
        int d10 = abstractC9441sb.d() + 100000;
        this.f50992c = new C8774ob(d10, abstractC9274rb);
        if (f50991d) {
            return;
        }
        if (100000 > d10 || d10 >= 200000) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(C8273lb c8273lb) {
        this.f52387a.a(c8273lb);
        int a10 = C8774ob.a(this.f50992c.f51280a);
        AbstractC9274rb[] abstractC9274rbArr = c8273lb.f50010d;
        if (a10 < abstractC9274rbArr.length) {
            abstractC9274rbArr[C8774ob.a(this.f50992c.f51280a)] = this.f50992c.f51283d;
        }
    }

    @Override
    public final C8774ob b(int i10) {
        return i10 == C8774ob.a(this.f50992c.f51280a) ? this.f50992c : this.f52387a.b(i10);
    }

    @Override
    public final C8774ob c() {
        return this.f50992c;
    }

    @Override
    public final int d() {
        return C8774ob.a(this.f50992c.f51280a) + 1;
    }

    public final String toString() {
        return this.f52387a.toString() + "; push(" + ((Object) this.f50992c.f51283d) + ")";
    }
}
