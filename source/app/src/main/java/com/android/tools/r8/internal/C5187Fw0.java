package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.function.Predicate;

public final class C5187Fw0 {

    public static final boolean f40346d = true;

    public final C4798y f40347a;

    public final C7215fB f40348b;

    public final IdentityHashMap f40349c = new IdentityHashMap();

    public C5187Fw0(C4798y c4798y, C7215fB c7215fB) {
        this.f40347a = c4798y;
        this.f40348b = c7215fB;
    }

    public final void a(C10340xw0 c10340xw0, C5071Dw0 c5071Dw0) {
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) c10340xw0);
        while (c6286Yx0.b()) {
            for (C10340xw0 c10340xw02 : c5071Dw0.a((C10340xw0) c6286Yx0.c())) {
                b(c10340xw02, c5071Dw0);
                c6286Yx0.b((C6286Yx0) c10340xw02);
            }
        }
    }

    public final boolean b(C10340xw0 c10340xw0) {
        return this.f40349c.get(c10340xw0) == EnumC5129Ew0.f40053b;
    }

    public final void b(C10340xw0 c10340xw0, C5071Dw0 c5071Dw0) {
        c5071Dw0.b(c10340xw0);
        IdentityHashMap identityHashMap = this.f40349c;
        EnumC5129Ew0 enumC5129Ew0 = EnumC5129Ew0.f40054c;
        EnumC5129Ew0 enumC5129Ew02 = (EnumC5129Ew0) identityHashMap.put(c10340xw0, enumC5129Ew0);
        if (!f40346d && enumC5129Ew02 != null && enumC5129Ew02 != enumC5129Ew0) {
            throw new AssertionError();
        }
    }

    public final boolean a(W5 w52) {
        return AbstractC9907vK.b(w52.s(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C5187Fw0.this.a((C7201f60) obj);
            }
        });
    }

    public final C10340xw0 a(C6286Yx0 c6286Yx0, U6 u62) {
        C5071Dw0 c5071Dw0 = new C5071Dw0();
        while (c6286Yx0.b()) {
            C10340xw0 c10340xw0 = (C10340xw0) c6286Yx0.c();
            if (!f40346d && c5071Dw0.f39692a.containsKey(c10340xw0)) {
                throw new AssertionError();
            }
            EnumC5129Ew0 enumC5129Ew0 = (EnumC5129Ew0) this.f40349c.get(c10340xw0);
            if (enumC5129Ew0 != null) {
                if (enumC5129Ew0 != EnumC5129Ew0.f40053b) {
                    a(c10340xw0, c5071Dw0);
                    return c10340xw0;
                }
            } else {
                if (c10340xw0.y()) {
                    b(c10340xw0, c5071Dw0);
                    a(c10340xw0, c5071Dw0);
                    return c10340xw0;
                }
                LinkedHashSet<C10340xw0> linkedHashSet = new LinkedHashSet(c10340xw0.a0());
                for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
                    com.android.tools.r8.ir.optimize.E a10 = abstractC10561zE.a(this.f40347a, this.f40348b);
                    a10.getClass();
                    if (a10 instanceof com.android.tools.r8.ir.optimize.C) {
                        b(c10340xw0, c5071Dw0);
                        a(c10340xw0, c5071Dw0);
                        return c10340xw0;
                    }
                    if (a10 instanceof com.android.tools.r8.ir.optimize.D) {
                        a10.a().forEach(new XE0(linkedHashSet));
                    }
                    if (abstractC10561zE.e1()) {
                        linkedHashSet.add(abstractC10561zE.d());
                    }
                }
                Iterator<E> it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    C10340xw0 c10340xw02 = (C10340xw0) it.next();
                    Object obj = this.f40349c.get(c10340xw02);
                    EnumC5129Ew0 enumC5129Ew02 = EnumC5129Ew0.f40054c;
                    if (obj == enumC5129Ew02) {
                        b(c10340xw0, c5071Dw0);
                        a(c10340xw0, c5071Dw0);
                        return c10340xw0;
                    }
                    if (!f40346d && this.f40349c.get(c10340xw02) == enumC5129Ew02) {
                        throw new AssertionError();
                    }
                    if (c10340xw02 == c10340xw0 || this.f40349c.containsKey(c10340xw02)) {
                        it.remove();
                    }
                }
                if (linkedHashSet.isEmpty()) {
                    C6286Yx0 c6286Yx02 = new C6286Yx0(2);
                    c6286Yx02.b((C6286Yx0) c10340xw0);
                    while (c6286Yx02.b()) {
                        C10340xw0 c10340xw03 = (C10340xw0) c6286Yx02.c();
                        IdentityHashMap identityHashMap = this.f40349c;
                        EnumC5129Ew0 enumC5129Ew03 = EnumC5129Ew0.f40053b;
                        EnumC5129Ew0 enumC5129Ew04 = (EnumC5129Ew0) identityHashMap.put(c10340xw03, enumC5129Ew03);
                        if (!f40346d && enumC5129Ew04 != null && enumC5129Ew04 != enumC5129Ew03) {
                            throw new AssertionError();
                        }
                        c5071Dw0.b(c10340xw03);
                        for (C10340xw0 c10340xw04 : c5071Dw0.a(c10340xw03)) {
                            if (!c5071Dw0.f39692a.containsKey(c10340xw04)) {
                                c6286Yx02.b((C6286Yx0) c10340xw04);
                            }
                        }
                    }
                } else {
                    for (C10340xw0 c10340xw05 : linkedHashSet) {
                        c5071Dw0.a(c10340xw0, c10340xw05);
                        u62.b(c6286Yx0.f46126b.contains(c10340xw05));
                    }
                    c6286Yx0.b((Iterable) linkedHashSet);
                }
            }
        }
        return null;
    }

    public final boolean a(C10340xw0 c10340xw0) {
        if (!c10340xw0.P()) {
            return true;
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) c10340xw0);
        U6 u62 = new U6();
        C10340xw0 a10 = a(c6286Yx0, u62);
        boolean isNull = Objects.isNull(a10);
        if (a10 == null) {
            if (u62.d()) {
                for (C10340xw0 c10340xw02 : c6286Yx0.a()) {
                    IdentityHashMap identityHashMap = this.f40349c;
                    EnumC5129Ew0 enumC5129Ew0 = EnumC5129Ew0.f40053b;
                    EnumC5129Ew0 enumC5129Ew02 = (EnumC5129Ew0) identityHashMap.put(c10340xw02, enumC5129Ew0);
                    if (!f40346d && enumC5129Ew02 != null && enumC5129Ew02 != enumC5129Ew0) {
                        throw new AssertionError();
                    }
                }
            } else if (!f40346d && !c6286Yx0.a().stream().allMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C5187Fw0.this.b((C10340xw0) obj);
                }
            })) {
                throw new AssertionError();
            }
        }
        return isNull;
    }
}
