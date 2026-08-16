package com.android.tools.r8.internal;

import java.util.UUID;

public final class C5702Ot0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        UUID uuid = (UUID) obj;
        c9075qL.d(uuid == null ? null : uuid.toString());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        try {
            return UUID.fromString(s10);
        } catch (IllegalArgumentException e10) {
            throw new C8407mL("Failed parsing '" + s10 + "' as UUID; at path " + c8240lL.j(), e10);
        }
    }
}
