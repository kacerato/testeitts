package com.android.tools.r8.internal;

import java.math.BigInteger;

public final class C5181Ft0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        c9075qL.a((BigInteger) obj);
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        try {
            return new BigInteger(s10);
        } catch (NumberFormatException e10) {
            throw new C8407mL("Failed parsing '" + s10 + "' as BigInteger; at path " + c8240lL.j(), e10);
        }
    }
}
