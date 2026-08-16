package com.android.tools.r8.internal;

import java.util.regex.Matcher;

public final class C6323Zn0 extends AbstractC7146eo0 {
    @Override
    public final String a() {
        return "[^\\d\\s\\[\\];:()<>][^\\s\\[\\];:()<>]*";
    }

    @Override
    public final InterfaceC7313fo0 a(final String str) {
        return new InterfaceC7313fo0() {
            @Override
            public final boolean a(C5980Tn0 c5980Tn0, Matcher matcher) {
                return C6323Zn0.a(String.this, c5980Tn0, matcher);
            }
        };
    }

    public static boolean a(String str, C5980Tn0 c5980Tn0, Matcher matcher) {
        int start = matcher.start(str);
        if (start == -1) {
            return false;
        }
        c5980Tn0.a(start, matcher.end(str));
        return true;
    }
}
