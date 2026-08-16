package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10656zq0;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;

public class K0 {

    public static final boolean f36513g = true;

    public final boolean f36514a;

    public final int f36515b;

    public final boolean f36516c;

    public final boolean f36517d;

    public final Map<Integer, C4515j0> f36518e;

    public final B60 f36519f;

    public K0(boolean z10, int i10, boolean z11, boolean z12, AbstractC8552nC abstractC8552nC, B60 b60) {
        this.f36514a = z10;
        this.f36515b = i10;
        this.f36516c = z11;
        this.f36517d = z12;
        this.f36518e = abstractC8552nC;
        this.f36519f = b60;
        if (!f36513g && b60 == null) {
            throw new AssertionError();
        }
    }

    public final String a(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("pc ");
        }
        sb2.append(C10656zq0.a(this.f36515b, 2));
        sb2.append(", ");
        sb2.append((Object) this.f36519f);
        if (this.f36516c) {
            sb2.append(", prologue_end = true");
        }
        if (this.f36517d) {
            sb2.append(", epilogue_begin = true");
        }
        if (!this.f36518e.isEmpty()) {
            sb2.append(", locals: [");
            Iterator it = new TreeSet(this.f36518e.o()).iterator();
            boolean z11 = true;
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (z11) {
                    z11 = false;
                } else {
                    sb2.append(", ");
                }
                sb2.append((Object) num);
                sb2.append(" -> ");
                sb2.append((Object) this.f36518e.get(num));
            }
            sb2.append("]");
        }
        return sb2.toString();
    }

    public B60 b() {
        return this.f36519f;
    }

    public final String toString() {
        return a(true);
    }

    public int a() {
        return this.f36519f.f();
    }
}
