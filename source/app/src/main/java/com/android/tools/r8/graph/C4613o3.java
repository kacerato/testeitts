package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C5417Jv0;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C4613o3 implements InterfaceC4556l3 {

    public static final C4613o3 f37534e;

    public static final boolean f37535f = true;

    public final C4554l1 f37536a;

    public int f37537b;

    public AbstractC4401d f37538c;

    public AbstractC4401d f37539d;

    static {
        C4363b c4363b = C4363b.f37064a;
        f37534e = new C4613o3(null, 0, c4363b, c4363b);
    }

    public C4613o3(C4554l1 c4554l1, int i10, AbstractC4401d abstractC4401d, AbstractC4401d abstractC4401d2) {
        this.f37536a = c4554l1;
        this.f37537b = i10;
        this.f37538c = abstractC4401d;
        this.f37539d = abstractC4401d2;
    }

    public final void a(Consumer consumer, AbstractC4401d abstractC4401d, final Set set) {
        abstractC4401d.getClass();
        if (abstractC4401d instanceof C4363b) {
            return;
        }
        if (abstractC4401d instanceof C4344a) {
            abstractC4401d.a().a(consumer, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C4613o3.this.a(set, (C4554l1) obj);
                }
            });
            return;
        }
        throw new C5417Jv0("Should never be iterating the indirect accesses when they are unknown");
    }

    public final void b() {
        C4382c c4382c = C4382c.f37089a;
        this.f37538c = c4382c;
        this.f37539d = c4382c;
    }

    public final void c() {
        this.f37538c.a(this.f37536a);
        this.f37539d.a(this.f37536a);
    }

    public final boolean d() {
        return (this.f37537b & 8) != 0 || e();
    }

    public final boolean e() {
        return (this.f37537b & 16) != 0;
    }

    public final boolean f() {
        return !this.f37539d.c() || e() || g();
    }

    public final boolean g() {
        return (this.f37537b & 4) != 0;
    }

    public final boolean a(Set set, C4554l1 c4554l1) {
        return c4554l1 != this.f37536a && set.add(c4554l1);
    }

    public final void a() {
        boolean z10 = f37535f;
        if (!z10 && d()) {
            throw new AssertionError();
        }
        if (!z10 && (this.f37537b & 1) != 0) {
            throw new AssertionError();
        }
        if (!z10 && (this.f37537b & 2) != 0) {
            throw new AssertionError();
        }
        this.f37538c = C4363b.f37064a;
        this.f37537b &= -33;
    }
}
