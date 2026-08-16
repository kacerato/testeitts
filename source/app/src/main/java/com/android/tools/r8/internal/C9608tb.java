package com.android.tools.r8.internal;

public final class C9608tb extends AbstractC9441sb {

    public static final boolean f52632d = true;

    public final C8774ob f52633c;

    public C9608tb(AbstractC9441sb abstractC9441sb, int i10, AbstractC9274rb abstractC9274rb) {
        super(abstractC9441sb.f52388b + 1, abstractC9441sb);
        this.f52633c = new C8774ob(i10, abstractC9274rb);
        if (f52632d) {
            return;
        }
        if (i10 < 0 || i10 >= 100000) {
            throw new AssertionError();
        }
    }

    @Override
    public final C8774ob a(int i10) {
        C8774ob c8774ob = this.f52633c;
        return i10 == c8774ob.f51280a ? c8774ob : this.f52387a.a(i10);
    }

    @Override
    public final int b() {
        return Math.max(this.f52633c.f51280a, this.f52387a.b());
    }

    public final String toString() {
        String obj = this.f52387a.toString();
        C8774ob c8774ob = this.f52633c;
        return obj + "; write " + c8774ob.f51280a + " := " + ((Object) c8774ob.f51283d);
    }

    @Override
    public final void a(C8273lb c8273lb) {
        this.f52387a.a(c8273lb);
        AbstractC9274rb[] abstractC9274rbArr = c8273lb.f50009c;
        C8774ob c8774ob = this.f52633c;
        abstractC9274rbArr[c8774ob.f51280a] = c8774ob.f51283d;
    }
}
