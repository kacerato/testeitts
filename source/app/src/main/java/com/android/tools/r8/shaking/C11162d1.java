package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4550kg;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

public final class C11162d1 {

    public static final boolean f57231c = true;

    public C11196f1 f57232a;

    public IdentityHashMap f57233b = null;

    public C11162d1(C11196f1 c11196f1) {
        if (!f57231c && c11196f1.f57272a != null) {
            throw new AssertionError();
        }
        this.f57232a = c11196f1;
    }

    public final AbstractC11247i1 a() {
        if (this.f57232a.a()) {
            if (f57231c || this.f57233b == null) {
                return C11230h1.f57361a;
            }
            throw new AssertionError();
        }
        if (this.f57233b == null && this.f57232a.f57273b.a()) {
            return C11145c1.f57207a;
        }
        return new C11179e1(this.f57232a, this.f57233b);
    }

    public final void b() {
        IdentityHashMap identityHashMap = this.f57233b;
        if (identityHashMap == null) {
            return;
        }
        if (!f57231c && identityHashMap.isEmpty()) {
            throw new AssertionError();
        }
        if (this.f57232a.f57273b.a()) {
            return;
        }
        ArrayList arrayList = null;
        for (com.android.tools.r8.graph.M2 m22 : this.f57233b.o()) {
            if (((C11196f1) this.f57233b.get(m22)).f57273b.a(this.f57232a.f57273b)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(this.f57233b.size());
                }
                arrayList.add(m22);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() == this.f57233b.size()) {
                this.f57233b = null;
                return;
            }
            IdentityHashMap identityHashMap2 = this.f57233b;
            Objects.requireNonNull(identityHashMap2);
            arrayList.forEach(new C4550kg(identityHashMap2));
        }
    }

    public final void a(C11162d1 c11162d1) {
        if (c11162d1.f57233b == null && c11162d1.f57232a.f57273b.a()) {
            return;
        }
        if (c11162d1.f57232a.a()) {
            C11196f1 c11196f1 = C11196f1.f57268d;
            this.f57232a = c11196f1;
            this.f57233b = null;
            if (!f57231c && !c11196f1.a()) {
                throw new AssertionError();
            }
            return;
        }
        C11196f1 c11196f12 = this.f57232a;
        C11196f1 a10 = c11196f12.a(c11162d1.f57232a);
        this.f57232a = a10;
        if (a10.a()) {
            C11196f1 c11196f13 = C11196f1.f57268d;
            this.f57232a = c11196f13;
            this.f57233b = null;
            if (!f57231c && !c11196f13.a()) {
                throw new AssertionError();
            }
            return;
        }
        IdentityHashMap identityHashMap = c11162d1.f57233b;
        if (identityHashMap != null) {
            if (this.f57233b == null) {
                this.f57233b = new IdentityHashMap(c11162d1.f57233b);
            } else {
                identityHashMap.forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        C11162d1.this.a((com.android.tools.r8.graph.M2) obj, (C11196f1) obj2);
                    }
                });
            }
            b();
            return;
        }
        if (this.f57232a != c11196f12) {
            b();
        }
    }

    public final boolean a(AbstractC11247i1 abstractC11247i1) {
        abstractC11247i1.getClass();
        if (abstractC11247i1 instanceof C11145c1) {
            return this.f57233b == null && this.f57232a.f57273b.a();
        }
        if (abstractC11247i1 instanceof C11230h1) {
            return this.f57232a.a();
        }
        C11179e1 a10 = abstractC11247i1.a();
        return this.f57232a.equals(a10.f57250a) && Objects.equals(this.f57233b, a10.f57251b);
    }

    public final void a(com.android.tools.r8.graph.M2 m22, final C11196f1 c11196f1) {
        this.f57233b.compute(m22, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C11162d1.a(C11196f1.this, (com.android.tools.r8.graph.M2) obj, (C11196f1) obj2);
            }
        });
    }

    public static C11196f1 a(C11196f1 c11196f1, com.android.tools.r8.graph.M2 m22, C11196f1 c11196f12) {
        return c11196f12 == null ? c11196f1 : c11196f12.a(c11196f1);
    }

    public final void a(C11213g1 c11213g1) {
        C11196f1 c11196f1;
        if (c11213g1.a(this.f57232a.f57273b)) {
            return;
        }
        C11213g1 c11213g12 = this.f57232a.f57273b;
        c11213g12.getClass();
        if (c11213g1.a(c11213g12)) {
            c11213g1 = c11213g12;
        } else if (!c11213g12.a(c11213g1)) {
            c11213g1 = C11213g1.f57333e;
        }
        if (c11213g1 == C11213g1.f57333e) {
            c11196f1 = C11196f1.f57268d;
        } else if (c11213g1 == C11213g1.f57331c) {
            c11196f1 = C11196f1.f57269e;
        } else if (c11213g1 == C11213g1.f57332d) {
            c11196f1 = C11196f1.f57270f;
        } else {
            if (!C11196f1.f57271g && !c11213g1.a()) {
                throw new AssertionError();
            }
            c11196f1 = C11196f1.f57267c;
        }
        this.f57232a = c11196f1;
        b();
    }

    public final void a(com.android.tools.r8.graph.M2 m22, final C11213g1 c11213g1) {
        if (!f57231c && m22 == null) {
            throw new AssertionError();
        }
        if (c11213g1.a(this.f57232a.f57273b)) {
            return;
        }
        if (this.f57233b == null) {
            this.f57233b = new IdentityHashMap(3);
        }
        this.f57233b.compute(m22, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C11162d1.a(C11213g1.this, (com.android.tools.r8.graph.M2) obj, (C11196f1) obj2);
            }
        });
    }

    public static C11196f1 a(C11213g1 c11213g1, com.android.tools.r8.graph.M2 m22, C11196f1 c11196f1) {
        C11196f1 c11196f12 = new C11196f1(m22, c11213g1);
        return c11196f1 == null ? c11196f12 : c11196f12.a(c11196f1);
    }
}
