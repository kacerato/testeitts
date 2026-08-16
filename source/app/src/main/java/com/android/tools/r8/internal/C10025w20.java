package com.android.tools.r8.internal;

public final class C10025w20 extends B20 implements A30 {

    public C10526z20 f53405h;

    public final D20 f53406i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10025w20(D20 d20) {
        super(d20);
        this.f53406i = d20;
    }

    @Override
    public final Object next() {
        C10526z20 c10526z20 = new C10526z20(this.f53406i, a());
        this.f53405h = c10526z20;
        return c10526z20;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f53405h.f54265b = -1;
    }
}
