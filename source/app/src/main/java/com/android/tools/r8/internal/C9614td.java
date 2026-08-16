package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import java.util.ArrayList;
import java.util.Set;
import java.util.function.Predicate;

public final class C9614td {

    public static final boolean f52639d = true;

    public final Set f52640a = AbstractC5513Ll0.c();

    public final ArrayList f52641b = new ArrayList();

    public final ArrayList f52642c = new ArrayList();

    public static boolean b(com.android.tools.r8.graph.H2 h22, C4516j1 c4516j1) {
        return c4516j1.B0() == h22.f36245e;
    }

    public final void a(C4516j1 c4516j1) {
        this.f52642c.add(c4516j1);
        boolean add = this.f52640a.add(c4516j1.getReference());
        if (!f52639d && !add) {
            throw new AssertionError();
        }
    }

    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        return !this.f52640a.contains(a22);
    }

    public static boolean a(com.android.tools.r8.graph.H2 h22, C4516j1 c4516j1) {
        return c4516j1.B0() == h22.f36245e;
    }

    public final void a(final com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f52639d;
        if (!z10 && !this.f52641b.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9614td.a(com.android.tools.r8.graph.H2.this, (C4516j1) obj);
            }
        })) {
            throw new AssertionError();
        }
        if (!z10 && !this.f52641b.stream().allMatch(new C5714Oz0())) {
            throw new AssertionError();
        }
        if (!z10 && !this.f52642c.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9614td.b(com.android.tools.r8.graph.H2.this, (C4516j1) obj);
            }
        })) {
            throw new AssertionError();
        }
        if (!z10 && !this.f52642c.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C4516j1) obj).I0();
            }
        })) {
            throw new AssertionError();
        }
        ArrayList arrayList = this.f52641b;
        h22.getClass();
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        h22.a((C4516j1[]) arrayList.toArray(c4516j1Arr));
        h22.f36252l.a((C4516j1[]) this.f52642c.toArray(c4516j1Arr));
    }
}
