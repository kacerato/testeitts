package com.android.tools.r8.internal;

import java.net.InetAddress;

public final class C5644Nt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        InetAddress inetAddress = (InetAddress) obj;
        c9075qL.d(inetAddress == null ? null : inetAddress.getHostAddress());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        return InetAddress.getByName(c8240lL.s());
    }
}
