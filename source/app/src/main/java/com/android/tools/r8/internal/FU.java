package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.position.TextPosition;
import java.util.Set;

public class FU {
    public static com.android.tools.r8.graph.M2 a(String str, C4724u1 c4724u1) {
        if (str.endsWith(".class")) {
            String a10 = AbstractC4281a.a(str, 6, 0);
            if (!a10.contains(".")) {
                return c4724u1.d("L" + a10 + ";");
            }
            throw new C5325If("Illegal main-dex-list entry '" + str + "'.");
        }
        throw new C5325If("Illegal main-dex-list entry '" + str + "'.");
    }

    public static Set<com.android.tools.r8.graph.M2> a(InterfaceC11677v0 interfaceC11677v0, C4724u1 c4724u1) {
        try {
            String a10 = interfaceC11677v0.a();
            Set<com.android.tools.r8.graph.M2> c10 = AbstractC5513Ll0.c();
            int i10 = 0;
            int i11 = 0;
            while (i10 < a10.length()) {
                i11++;
                int indexOf = a10.indexOf(10, i10);
                if (indexOf == -1) {
                    indexOf = a10.length();
                }
                String h10 = C10656zq0.h(a10.substring(i10, indexOf));
                if (!h10.isEmpty()) {
                    try {
                        c10.add(a(h10, c4724u1));
                    } catch (C5325If e10) {
                        throw new C5325If(e10.getMessage(), e10, interfaceC11677v0.getOrigin(), new TextPosition(i10, i11, -1));
                    }
                }
                i10 = indexOf + 1;
            }
            return c10;
        } catch (ResourceException e11) {
            throw new C5325If(interfaceC11677v0.getOrigin(), "Failed to parse main-dex resource", e11);
        }
    }
}
