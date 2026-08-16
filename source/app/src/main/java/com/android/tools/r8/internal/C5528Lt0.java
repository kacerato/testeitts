package com.android.tools.r8.internal;

import java.net.URL;

public final class C5528Lt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        URL url = (URL) obj;
        c9075qL.d(url == null ? null : url.toExternalForm());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        String s10 = c8240lL.s();
        if ("null".equals(s10)) {
            return null;
        }
        return new URL(s10);
    }
}
