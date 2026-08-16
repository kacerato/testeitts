package com.android.tools.r8.internal;

import java.math.BigDecimal;

public enum C9326rs0 extends EnumC9493ss0 {
    public C9326rs0() {
        super(3, "BIG_DECIMAL");
    }

    @Override
    public final Number a(C8240lL c8240lL) {
        String s10 = c8240lL.s();
        try {
            return new BigDecimal(s10);
        } catch (NumberFormatException e10) {
            throw new C7574hL("Cannot parse " + s10 + "; at path " + c8240lL.j(), e10);
        }
    }
}
