package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;
import java.util.Locale;
import java.util.StringTokenizer;

public final class C5876Rt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Locale locale = (Locale) obj;
        c9075qL.d(locale == null ? null : locale.toString());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(c8240lL.s(), ConstantDescs.DEFAULT_NAME);
        String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        if (nextToken2 == null && nextToken3 == null) {
            return new Locale(nextToken);
        }
        if (nextToken3 == null) {
            return new Locale(nextToken, nextToken2);
        }
        return new Locale(nextToken, nextToken2, nextToken3);
    }
}
