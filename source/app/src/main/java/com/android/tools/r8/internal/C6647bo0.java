package com.android.tools.r8.internal;

import java.util.regex.Matcher;

public final class C6647bo0 extends AbstractC7146eo0 {
    @Override
    public final String a() {
        return "\\d*";
    }

    @Override
    public final InterfaceC7313fo0 a(final String str) {
        return new InterfaceC7313fo0() {
            @Override
            public final boolean a(C5980Tn0 c5980Tn0, Matcher matcher) {
                return C6647bo0.a(String.this, c5980Tn0, matcher);
            }
        };
    }

    public static boolean a(String str, C5980Tn0 c5980Tn0, Matcher matcher) {
        int start = matcher.start(str);
        boolean z10 = false;
        if (start == -1) {
            return false;
        }
        if (start > 0) {
            int i10 = start - 1;
            if (c5980Tn0.f44580a.charAt(i10) == ':') {
                z10 = true;
                start = i10;
            }
        }
        c5980Tn0.a(start, matcher.end(str), z10);
        return true;
    }
}
