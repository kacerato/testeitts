package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC6450ae0 extends AbstractC8999pu0 {

    public static final C6301Zd0 f46571c = new C6301Zd0(C8854p10.c());

    public static final C6301Zd0 f46572d = new C6301Zd0(C8854p10.a());

    public final C8854p10 f46573b;

    public AbstractC6450ae0(C8854p10 c8854p10) {
        this.f46573b = c8854p10;
    }

    @Override
    public final C8854p10 B() {
        return this.f46573b;
    }

    public AbstractC8999pu0 D() {
        C8854p10 c8854p10 = this.f46573b;
        C8854p10 b10 = C8854p10.b();
        c8854p10.getClass();
        C8854p10 c8854p102 = C8854p10.f51411c;
        if (c8854p10 == c8854p102) {
            c8854p10 = b10;
        } else if (b10 != c8854p102 && c8854p10 != b10) {
            c8854p10 = C8854p10.f51412d;
        }
        return a(c8854p10);
    }

    public abstract com.android.tools.r8.graph.M2 a(C4724u1 c4724u1);

    public abstract AbstractC6450ae0 a(AbstractC6450ae0 abstractC6450ae0, C4798y c4798y);

    public abstract AbstractC6450ae0 a(C8854p10 c8854p10);

    public AbstractC6450ae0 b(C8854p10 c8854p10) {
        return a(this.f46573b.a(c8854p10));
    }

    @Override
    public final AbstractC6450ae0 d() {
        return this;
    }

    @Override
    public boolean equals(Object obj) {
        throw new C5417Jv0("Should be implemented on each sub type");
    }

    @Override
    public int hashCode() {
        throw new C5417Jv0("Should be implemented on each sub type");
    }

    @Override
    public final boolean y() {
        return true;
    }
}
