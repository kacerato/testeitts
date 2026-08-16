package com.android.tools.r8.internal;

import java.util.Objects;

public final class C7099eY extends AbstractC7500gv {

    public static final boolean f47706a = true;

    @Override
    public final boolean a(Object obj, Object obj2) {
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) obj;
        AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) obj2;
        if (abstractC10561zE.w1()) {
            if (!abstractC10561zE2.w1()) {
                return false;
            }
            C9126qh J10 = abstractC10561zE.J();
            C9126qh J11 = abstractC10561zE2.J();
            return J10.a().equals(J11.a()) && J10.w2() == J11.w2() && J10.d().c().c0() == J11.d().c().c0();
        }
        if (!f47706a && !abstractC10561zE.Y1()) {
            throw new AssertionError();
        }
        if (!abstractC10561zE2.Y1()) {
            return false;
        }
        C6433aY p02 = abstractC10561zE.p0();
        C6433aY p03 = abstractC10561zE2.p0();
        return p02.v2().c().Y().equals(p03.v2().c().Y()) && p02.v2().c().c0() == p03.v2().c().c0() && p02.d().c().c0() == p03.d().c().c0();
    }

    @Override
    public final int a(Object obj) {
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) obj;
        if (abstractC10561zE.w1()) {
            C9126qh J10 = abstractC10561zE.J();
            return Objects.hash(J10.getClass(), Integer.valueOf(J10.d().c().c0()), Long.valueOf(J10.w2()));
        }
        if (!f47706a && !abstractC10561zE.Y1()) {
            throw new AssertionError();
        }
        C6433aY p02 = abstractC10561zE.p0();
        return Objects.hash(p02.getClass(), Integer.valueOf(p02.d().c().c0()), Integer.valueOf(p02.v2().c().c0()));
    }
}
