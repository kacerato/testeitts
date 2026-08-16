package com.android.tools.r8.internal;

public class Z20 extends AbstractC6859d30 {

    public final C6692c30 f46149g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z20(C6692c30 c6692c30) {
        super(c6692c30.f46952i);
        this.f46149g = c6692c30;
        this.f47263c = c6692c30.j();
    }

    @Override
    public final void d() {
        R20 c10 = this.f47263c.c();
        this.f47263c = c10;
        C6692c30 c6692c30 = this.f46149g;
        if (c6692c30.f46948e || c10 == null) {
            return;
        }
        C7192f30 c7192f30 = c6692c30.f46952i;
        Object obj = c10.f43785b;
        Object obj2 = c6692c30.f46946c;
        c7192f30.getClass();
        if (((Comparable) obj).compareTo(obj2) >= 0) {
            this.f47263c = null;
        }
    }

    @Override
    public final void e() {
        R20 e10 = this.f47262b.e();
        this.f47262b = e10;
        C6692c30 c6692c30 = this.f46149g;
        if (c6692c30.f46947d || e10 == null) {
            return;
        }
        C7192f30 c7192f30 = c6692c30.f46952i;
        Object obj = e10.f43785b;
        Object obj2 = c6692c30.f46945b;
        c7192f30.getClass();
        if (((Comparable) obj).compareTo(obj2) < 0) {
            this.f47262b = null;
        }
    }
}
