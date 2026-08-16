package com.android.tools.r8.internal;

public final class C9615td0 extends AbstractC10450yd0 implements A30 {

    public C10116wd0 f52643h;

    public final C4856Ad0 f52644i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9615td0(C4856Ad0 c4856Ad0) {
        super(c4856Ad0);
        this.f52644i = c4856Ad0;
    }

    @Override
    public final Object next() {
        C10116wd0 c10116wd0 = new C10116wd0(this.f52644i, a());
        this.f52643h = c10116wd0;
        return c10116wd0;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f52643h.f53543b = -1;
    }
}
