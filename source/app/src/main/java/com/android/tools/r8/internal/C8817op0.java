package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public final class C8817op0 {

    public static final boolean f51359g = true;

    public Map f51360a;

    public Map f51361b;

    public Set f51362c;

    public Set f51363d;

    public final HashSet f51364e = new HashSet();

    public final C8984pp0 f51365f;

    public C8817op0(C8984pp0 c8984pp0) {
        this.f51360a = c8984pp0.f51630b;
        this.f51361b = c8984pp0.f51631c;
        this.f51362c = c8984pp0.f51632d;
        this.f51363d = c8984pp0.f51633e;
        this.f51365f = c8984pp0;
    }

    public final C8817op0 a(C10340xw0 c10340xw0, Set set) {
        b();
        ((Set) this.f51360a.computeIfAbsent(c10340xw0, C5480Ky.a(new C10604zY0()))).addAll(set);
        return this;
    }

    public final C8817op0 b(C10340xw0 c10340xw0, Set set) {
        c();
        ((Set) this.f51361b.computeIfAbsent(c10340xw0, C5480Ky.a(new C10604zY0()))).addAll(set);
        return this;
    }

    public final void c(C10340xw0 c10340xw0, Set set) {
        this.f51360a.put(c10340xw0, AbstractC5513Ll0.a((Collection) set));
    }

    public final void d(C10340xw0 c10340xw0, Set set) {
        this.f51361b.put(c10340xw0, AbstractC5513Ll0.a((Collection) set));
    }

    public final void c() {
        if (this.f51361b == this.f51365f.f51631c) {
            this.f51361b = new HashMap(this.f51365f.f51631c.size() + 1);
            this.f51365f.f51631c.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C8817op0.this.d((C10340xw0) obj, (Set) obj2);
                }
            });
        }
    }

    public final void d() {
        if (this.f51363d == this.f51365f.f51633e) {
            this.f51363d = new HashSet(this.f51363d);
        }
    }

    public final void a(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        b();
        c();
        ((Set) this.f51360a.computeIfAbsent(c10340xw0, C5480Ky.a(new C10604zY0()))).add(c10340xw02);
        ((Set) this.f51361b.computeIfAbsent(c10340xw02, C5480Ky.a(new C10604zY0()))).add(c10340xw0);
    }

    public final void b() {
        if (this.f51360a == this.f51365f.f51630b) {
            this.f51360a = new HashMap(this.f51365f.f51630b.size() + 1);
            this.f51365f.f51630b.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C8817op0.this.c((C10340xw0) obj, (Set) obj2);
                }
            });
        }
    }

    public final C8984pp0 a() {
        boolean z10 = f51359g;
        if (!z10 && !this.f51363d.containsAll(this.f51362c)) {
            throw new AssertionError((Object) "Escaping is not a subset of live string builders");
        }
        if (!z10 && !this.f51363d.containsAll(this.f51360a.o())) {
            throw new AssertionError((Object) "Aliases is not a subset of live string builders");
        }
        if (!z10 && !this.f51362c.containsAll(this.f51364e)) {
            throw new AssertionError((Object) "Unexpected value in newlyEscaping not in escaping");
        }
        if (!z10 && !this.f51363d.containsAll(this.f51361b.o())) {
            throw new AssertionError((Object) "Escaped definitions should all be live");
        }
        if (!z10 && !this.f51361b.values().stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8817op0.this.a((Set) obj);
            }
        })) {
            throw new AssertionError((Object) "All known escaping definitions should be live string builders");
        }
        C8984pp0 c8984pp0 = this.f51365f;
        if (c8984pp0.f51633e == this.f51363d && c8984pp0.f51632d == this.f51362c && c8984pp0.f51630b == this.f51360a && c8984pp0.f51631c == this.f51361b) {
            c8984pp0.f51634f.clear();
            return this.f51365f;
        }
        return new C8984pp0(this.f51360a, this.f51361b, this.f51362c, this.f51363d, this.f51364e);
    }

    public final boolean a(Set set) {
        return this.f51363d.containsAll(set);
    }
}
