package com.android.tools.r8.internal;

import com.android.tools.r8.ResourceException;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.kotlin.C10812l0;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;

public final class D60 implements F60 {

    public static final boolean f39439h = true;

    public final C4798y f39440a;

    public final C4724u1 f39441b;

    public final C8604na f39443d;

    public final F60 f39444e;

    public C4516j1 f39445f;

    public final IdentityHashMap f39442c = new IdentityHashMap();

    public C10812l0.b f39446g = null;

    public D60(C4798y c4798y, F60 f60, C8604na c8604na) {
        this.f39440a = c4798y;
        this.f39441b = c4798y.b();
        this.f39444e = f60;
        this.f39443d = c8604na;
    }

    @Override
    public final C8699o50 a(B60 b60) {
        C10812l0.b bVar;
        Map.Entry<Integer, C10812l0.a> a10;
        String b10;
        String str;
        if (!f39439h && this.f39445f == null) {
            throw new AssertionError();
        }
        int f10 = b60.f();
        com.android.tools.r8.graph.M2 m22 = b60.f38808c.f38297f;
        if (this.f39446g == null) {
            this.f39446g = (C10812l0.b) this.f39442c.get(m22);
        }
        if (this.f39446g != null || this.f39442c.containsKey(m22)) {
            bVar = this.f39446g;
        } else {
            R2.k kVar = (R2.k) this.f39440a.f38397L.get(this.f39440a.g(this.f39445f.B0()).f36245e);
            if (kVar != null) {
                this.f39446g = C10812l0.c(((com.android.tools.r8.graph.L2) kVar.f36759d).toString());
            }
            this.f39442c.put(m22, this.f39446g);
            bVar = this.f39446g;
        }
        if (bVar != null && (a10 = bVar.a(f10)) != null) {
            int intValue = a10.getValue().a().f55702a + (f10 - a10.getKey().intValue());
            try {
                b10 = a10.getValue().b().b();
                C8604na c8604na = this.f39443d;
                if (c8604na.f50982a == null) {
                    c8604na.f50982a = new HashMap();
                    c8604na.a();
                }
                C6899dH c6899dH = (C6899dH) c8604na.f50982a.get(b10);
                str = c6899dH == null ? null : (String) c6899dH.get(intValue);
            } catch (ResourceException unused) {
            }
            if (str == null) {
                return this.f39444e.a(b60);
            }
            String k10 = C4932Bl.k(b10);
            int indexOf = str.indexOf(";;");
            boolean z10 = C8604na.f50981c;
            if (!z10 && indexOf <= 0) {
                throw new AssertionError();
            }
            String substring = str.substring(0, indexOf);
            int indexOf2 = str.indexOf(";;");
            if (!z10 && indexOf2 <= 0) {
                throw new AssertionError();
            }
            String substring2 = str.substring(indexOf2 + 2);
            String t10 = C4932Bl.t(substring2);
            String[] e10 = C4932Bl.e(substring2);
            com.android.tools.r8.graph.L2[] l2Arr = new com.android.tools.r8.graph.L2[e10.length];
            for (int i10 = 0; i10 < e10.length; i10++) {
                l2Arr[i10] = this.f39441b.b(e10[i10]);
            }
            C4724u1 c4724u1 = this.f39441b;
            com.android.tools.r8.graph.A2 a11 = c4724u1.a(c4724u1.b(k10), this.f39441b.b(substring), this.f39441b.b(t10), l2Arr);
            if (!a11.equals(b60.f38808c)) {
                Map.Entry a12 = bVar.f55363b.a(Integer.valueOf(f10));
                if (a12 != null) {
                    b60 = b60.b().a(Math.max(0, ((C10812l0.a) a12.getValue()).a().f55702a)).a();
                }
                F60 f60 = this.f39444e;
                B60.b.a a13 = B60.b.t().a(intValue).a(a11);
                a13.f38814c = b60;
                return f60.a(a13.a());
            }
            return this.f39444e.a(b60);
        }
        return this.f39444e.a(b60);
    }
}
