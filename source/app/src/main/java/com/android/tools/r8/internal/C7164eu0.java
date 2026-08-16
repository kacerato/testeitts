package com.android.tools.r8.internal;

public final class C7164eu0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        if (((Number) obj) == null) {
            c9075qL.i();
        } else {
            c9075qL.a(r4.shortValue());
        }
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        try {
            int o10 = c8240lL.o();
            if (o10 <= 65535 && o10 >= -32768) {
                return Short.valueOf((short) o10);
            }
            StringBuilder a10 = AbstractC5413Jt0.a(o10, "Lossy conversion from ", " to short; at path ");
            a10.append(c8240lL.j());
            throw new C8407mL(a10.toString());
        } catch (NumberFormatException e10) {
            throw new C8407mL(e10);
        }
    }
}
