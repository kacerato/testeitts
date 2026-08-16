package com.android.tools.r8.internal;

import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.IA;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Consumer;

public class C8433mY extends EA {
    public C8433mY(C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        super(c4724u1, c5094Ef0, false, 1);
    }

    public static void b(InterfaceC10161ws0 interfaceC10161ws0) {
    }

    public final HashMap a(String str) {
        V2 v22;
        IA.a a10;
        AbstractC6907dL a11 = a(this.f39782h, str);
        HashMap hashMap = new HashMap();
        ArrayList arrayList = a11.c().f46749b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C7407gL d10 = ((AbstractC6907dL) obj).d();
            int b10 = a(d10, "api_level_below_or_equal").b();
            if (d10.f48234b.containsKey("api_level_greater_or_equal")) {
                v22 = new V2(C2.a(b10), C2.a(((AbstractC6907dL) d10.f48234b.get("api_level_greater_or_equal")).b()));
            } else {
                v22 = new V2(C2.a(b10), null);
            }
            if (hashMap.containsKey(v22)) {
                IA ia2 = (IA) hashMap.get(v22);
                C5094Ef0 c5094Ef0 = this.f39778d;
                if (!EA.f39774i && this.f39781g == null) {
                    throw new AssertionError();
                }
                a10 = ia2.b(c5094Ef0, this.f39781g);
            } else {
                C5094Ef0 c5094Ef02 = this.f39778d;
                if (!EA.f39774i && this.f39781g == null) {
                    throw new AssertionError();
                }
                a10 = IA.a(c5094Ef02, this.f39781g);
            }
            a(d10, a10);
            hashMap.put(v22, a10.a());
        }
        return hashMap;
    }

    public C7767iY c(InterfaceC11677v0 interfaceC11677v0) {
        SA a10 = a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8433mY.b((InterfaceC10161ws0) obj);
            }
        }, b(interfaceC11677v0));
        HashMap a11 = a("common_flags");
        HashMap a12 = a("library_flags");
        HashMap a13 = a("program_flags");
        if (EA.f39774i || this.f39781g != null) {
            return new C7767iY(this.f39781g, a10, a11, a12, a13);
        }
        throw new AssertionError();
    }
}
