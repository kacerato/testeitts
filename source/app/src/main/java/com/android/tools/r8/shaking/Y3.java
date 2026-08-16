package com.android.tools.r8.shaking;

import com.android.tools.r8.shaking.AbstractC11401r4;
import com.android.tools.r8.shaking.C11384q3;
import java.util.Collections;
import java.util.List;
import java.util.function.Predicate;

public abstract class Y3 {

    public static final V3 f57128a = new V3();

    public static final boolean f57129b = true;

    public Y3 a() {
        return this;
    }

    public abstract boolean a(String str);

    public static boolean a(String str, int i10, String str2, int i11, List list, int i12) {
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            if (charAt == '*') {
                AbstractC11401r4 abstractC11401r4 = (AbstractC11401r4) list.get(i12);
                if (!f57129b && !abstractC11401r4.e()) {
                    throw new AssertionError();
                }
                AbstractC11401r4.b b10 = abstractC11401r4.b();
                for (int i13 = i11; i13 <= str2.length(); i13++) {
                    b10.a(str2.substring(i11, i13));
                    if (a(str, i10 + 1, str2, i13, list, i12 + 1)) {
                        return true;
                    }
                }
                return false;
            }
            if (charAt != '<') {
                if (charAt != '?') {
                    if (i11 != str2.length()) {
                        int i14 = i11 + 1;
                        if (charAt == str2.charAt(i11)) {
                            i11 = i14;
                        }
                    }
                    return false;
                }
                AbstractC11401r4 abstractC11401r42 = (AbstractC11401r4) list.get(i12);
                if (!f57129b && !abstractC11401r42.e()) {
                    throw new AssertionError();
                }
                if (i11 == str2.length()) {
                    return false;
                }
                AbstractC11401r4.b b11 = abstractC11401r42.b();
                int i15 = i11 + 1;
                String substring = str2.substring(i11, i15);
                synchronized (b11) {
                    b11.f57769b = substring;
                }
                i12++;
                i11 = i15;
            } else {
                AbstractC11401r4 abstractC11401r43 = (AbstractC11401r4) list.get(i12);
                if (!f57129b && !abstractC11401r43.d()) {
                    throw new AssertionError();
                }
                String g10 = abstractC11401r43.a().g();
                if (g10 == null || str2.length() < g10.length() + i11 || !g10.equals(str2.substring(i11, g10.length() + i11))) {
                    return false;
                }
                int length = g10.length() + i11;
                i12++;
                i10 = str.indexOf(">", i10);
                i11 = length;
            }
            i10++;
        }
        return i11 == str2.length();
    }

    public Iterable a(Predicate predicate) {
        return Collections.EMPTY_LIST;
    }

    public static Y3 a(C11384q3.a aVar) {
        if (aVar.f57729a.equals("*")) {
            return f57128a;
        }
        if (aVar.f57730b.isEmpty()) {
            return new X3(aVar.f57729a);
        }
        return new W3(aVar);
    }
}
