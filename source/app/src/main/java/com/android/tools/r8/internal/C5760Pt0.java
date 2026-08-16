package com.android.tools.r8.internal;

import java.util.Currency;

public final class C5760Pt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        c9075qL.d(((Currency) obj).getCurrencyCode());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        String s10 = c8240lL.s();
        try {
            return Currency.getInstance(s10);
        } catch (IllegalArgumentException e10) {
            throw new C8407mL("Failed parsing '" + s10 + "' as Currency; at path " + c8240lL.j(), e10);
        }
    }
}
