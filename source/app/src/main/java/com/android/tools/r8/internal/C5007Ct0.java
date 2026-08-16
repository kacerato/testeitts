package com.android.tools.r8.internal;

public final class C5007Ct0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Character ch2 = (Character) obj;
        c9075qL.d(ch2 == null ? null : String.valueOf(ch2));
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        if (s10.length() == 1) {
            return Character.valueOf(s10.charAt(0));
        }
        throw new C8407mL("Expecting character, got: " + s10 + "; at " + c8240lL.j());
    }
}
