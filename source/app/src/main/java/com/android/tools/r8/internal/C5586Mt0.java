package com.android.tools.r8.internal;

import java.net.URI;
import java.net.URISyntaxException;

public final class C5586Mt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        URI uri = (URI) obj;
        c9075qL.d(uri == null ? null : uri.toASCIIString());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        try {
            String s10 = c8240lL.s();
            if ("null".equals(s10)) {
                return null;
            }
            return new URI(s10);
        } catch (URISyntaxException e10) {
            throw new C7073eL(e10);
        }
    }
}
