package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;

public final class C8984pp0 extends D1 {

    public static final C8984pp0 f51627g = new C8984pp0();

    public static final C8984pp0 f51628h = new C8984pp0();

    public static final boolean f51629i = true;

    public final Map f51630b;

    public final Map f51631c;

    public final Set f51632d;

    public final Set f51633e;

    public final Set f51634f;

    public C8984pp0() {
        Map map = Collections.EMPTY_MAP;
        this.f51630b = map;
        this.f51631c = map;
        Set set = Collections.EMPTY_SET;
        this.f51632d = set;
        this.f51633e = set;
        this.f51634f = set;
    }

    public final boolean a(C10340xw0 c10340xw0) {
        return this.f51633e.contains(c10340xw0);
    }

    @Override
    public final D1 b(C4798y c4798y, D1 d12) {
        return a((C8984pp0) d12);
    }

    @Override
    public final D1 c() {
        return this;
    }

    public final boolean d() {
        return this == f51627g;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8984pp0)) {
            return false;
        }
        C8984pp0 c8984pp0 = (C8984pp0) obj;
        if (d()) {
            return c8984pp0.d();
        }
        C8984pp0 c8984pp02 = f51628h;
        if (this == c8984pp02) {
            c8984pp0.getClass();
            return c8984pp0 == c8984pp02;
        }
        Map map = this.f51630b;
        Map map2 = c8984pp0.f51630b;
        boolean z10 = TU.f44487a;
        if (map != map2) {
            if (map.size() == map2.size()) {
                for (Map.Entry entry : map.entrySet()) {
                    if (!entry.getValue().equals(map2.get(entry.getKey()))) {
                        break;
                    }
                }
            }
        }
        Map map3 = this.f51631c;
        Map map4 = c8984pp0.f51631c;
        if (map3 != map4) {
            if (map3.size() == map4.size()) {
                for (Map.Entry entry2 : map3.entrySet()) {
                    if (!entry2.getValue().equals(map4.get(entry2.getKey()))) {
                        break;
                    }
                }
            }
        }
        return this.f51632d.equals(c8984pp0.f51632d) && this.f51633e.equals(c8984pp0.f51633e);
    }

    public final int hashCode() {
        return Objects.hash(this.f51630b, this.f51631c, this.f51632d, this.f51633e, Boolean.valueOf(d()), Boolean.valueOf(this == f51628h));
    }

    public final C8984pp0 a(C8984pp0 c8984pp0) {
        if (d()) {
            return c8984pp0;
        }
        if (c8984pp0.d()) {
            return this;
        }
        C8984pp0 c8984pp02 = f51628h;
        if (this == c8984pp02) {
            return c8984pp0;
        }
        if (c8984pp0 == c8984pp02) {
            return this;
        }
        if (!f51629i && d()) {
            throw new AssertionError();
        }
        final C8817op0 c8817op0 = new C8817op0(this);
        Set set = c8984pp0.f51632d;
        if (set != null) {
            if (c8817op0.f51362c == c8817op0.f51365f.f51632d) {
                c8817op0.f51362c = new HashSet(c8817op0.f51362c);
            }
            c8817op0.f51362c.addAll(set);
        }
        Set set2 = c8984pp0.f51633e;
        c8817op0.d();
        c8817op0.f51363d.addAll(set2);
        c8984pp0.f51630b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8817op0.this.a((C10340xw0) obj, (Set) obj2);
            }
        });
        c8984pp0.f51631c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8817op0.this.b((C10340xw0) obj, (Set) obj2);
            }
        });
        return c8817op0.a();
    }

    public C8984pp0(Map map, Map map2, Set set, Set set2, HashSet hashSet) {
        if (!f51629i && map.isEmpty() && set.isEmpty() && map2.isEmpty() && set2.isEmpty()) {
            throw new AssertionError((Object) "Creating an instance of BOTTOM");
        }
        this.f51630b = map;
        this.f51631c = map2;
        this.f51632d = set;
        this.f51633e = set2;
        this.f51634f = hashSet;
    }
}
