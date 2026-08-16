package com.android.tools.r8.internal;

import java.util.regex.Matcher;

public final class C7647ho0 extends AbstractC7146eo0 {
    @Override
    public final String a() {
        return ".*";
    }

    @Override
    public final InterfaceC7313fo0 a(final String str) {
        return new InterfaceC7313fo0() {
            @Override
            public final boolean a(C5980Tn0 c5980Tn0, Matcher matcher) {
                return C7647ho0.this.a(str, c5980Tn0, matcher);
            }
        };
    }

    public final boolean a(String str, C5980Tn0 c5980Tn0, Matcher matcher) {
        int length;
        int start = matcher.start(str);
        if (start == -1) {
            return false;
        }
        String group = matcher.group(str);
        int length2 = group.length();
        while (true) {
            if (length2 > 0) {
                length = length2 - 1;
                char charAt = group.charAt(length);
                if (charAt == ':' && length2 < group.length()) {
                    break;
                }
                if (!Character.isDigit(charAt)) {
                    length = group.length();
                    break;
                }
                length2--;
            } else {
                length = group.length();
                break;
            }
        }
        int i10 = length + start;
        c5980Tn0.e(start, i10);
        int end = matcher.end(str);
        c5980Tn0.a(Integer.min(i10, end), end, true);
        return true;
    }
}
