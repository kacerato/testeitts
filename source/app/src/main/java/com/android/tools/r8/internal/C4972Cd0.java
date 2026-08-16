package com.android.tools.r8.internal;

public final class C4972Cd0 extends AbstractC5262Hd0 implements A30 {

    public C5146Fd0 f39285h;

    public final C5378Jd0 f39286i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4972Cd0(C5378Jd0 c5378Jd0) {
        super(c5378Jd0);
        this.f39286i = c5378Jd0;
    }

    @Override
    public final Object next() {
        C5146Fd0 c5146Fd0 = new C5146Fd0(this.f39286i, a());
        this.f39285h = c5146Fd0;
        return c5146Fd0;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f39285h.f40263b = -1;
    }
}
