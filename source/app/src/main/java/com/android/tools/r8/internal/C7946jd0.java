package com.android.tools.r8.internal;

public final class C7946jd0 extends AbstractC8781od0 implements A30 {

    public C8447md0 f49279h;

    public final C9115qd0 f49280i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7946jd0(C9115qd0 c9115qd0) {
        super(c9115qd0);
        this.f49280i = c9115qd0;
    }

    @Override
    public final Object next() {
        C8447md0 c8447md0 = new C8447md0(this.f49280i, a());
        this.f49279h = c8447md0;
        return c8447md0;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f49279h.f50363b = -1;
    }
}
