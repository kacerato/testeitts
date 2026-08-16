package com.android.tools.r8.internal;

import java.math.BigDecimal;

public final class C5123Et0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        c9075qL.a((BigDecimal) obj);
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        try {
            return new BigDecimal(s10);
        } catch (NumberFormatException e10) {
            throw new C8407mL("Failed parsing '" + s10 + "' as BigDecimal; at path " + c8240lL.j(), e10);
        }
    }
}
