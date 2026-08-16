package com.android.tools.r8.internal;

import w2.AbstractC15885e;

public final class C6066Vb extends AbstractC5892Sb {

    public static final int f45099c = Integer.numberOfLeadingZeros(31);

    public static final C6066Vb f45100d = new C6066Vb();

    public C6066Vb() {
        super("CharMatcher.whitespace()");
    }

    @Override
    public final boolean b(char c10) {
        return AbstractC15885e.C.f126284d.charAt((AbstractC15885e.C.f126285e * c10) >>> f45099c) == c10;
    }
}
