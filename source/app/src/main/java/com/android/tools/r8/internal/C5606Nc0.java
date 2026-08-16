package com.android.tools.r8.internal;

public final class C5606Nc0 extends AbstractC5896Sc0 implements A30 {

    public C5780Qc0 f42640h;

    public final C6012Uc0 f42641i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5606Nc0(C6012Uc0 c6012Uc0) {
        super(c6012Uc0);
        this.f42641i = c6012Uc0;
    }

    @Override
    public final Object next() {
        C5780Qc0 c5780Qc0 = new C5780Qc0(this.f42641i, a());
        this.f42640h = c5780Qc0;
        return c5780Qc0;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f42640h.f43641b = -1;
    }
}
