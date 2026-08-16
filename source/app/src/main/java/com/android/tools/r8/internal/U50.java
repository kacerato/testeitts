package com.android.tools.r8.internal;

import java.util.function.Predicate;

public abstract class U50 {

    public static final boolean f44670a = true;

    public static Predicate a(final Predicate predicate) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return U50.a(Predicate.this, (AbstractC10561zE) obj);
            }
        };
    }

    public static int b(AbstractC10561zE abstractC10561zE) {
        C10340xw0 d10 = abstractC10561zE.d();
        return d10 instanceof C8313lo0 ? ((C8313lo0) d10).f50108p.length : (d10 == null || !d10.Q()) ? 0 : 1;
    }

    public static boolean a(Predicate predicate, AbstractC10561zE abstractC10561zE) {
        if (!predicate.test(abstractC10561zE) || abstractC10561zE.c1()) {
            return false;
        }
        return abstractC10561zE.d() == null || !abstractC10561zE.d().z();
    }

    public static void a(C7920jS c7920jS, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            c7920jS.previous();
        }
    }

    public static int a(AbstractC10561zE abstractC10561zE) {
        int i10 = 0;
        for (int size = abstractC10561zE.f54321f.size() - 1; size >= 0; size--) {
            if (((C10340xw0) abstractC10561zE.f54321f.get(size)).Q()) {
                i10++;
            }
        }
        return i10;
    }
}
