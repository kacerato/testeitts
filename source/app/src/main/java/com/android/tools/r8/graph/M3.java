package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.M3;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C6286Yx0;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class M3 {

    public static final boolean f36594c = true;

    public final IdentityHashMap f36595a;

    public final IdentityHashMap f36596b;

    public static class a {

        public static final a f36597c = new a(Collections.EMPTY_MAP, Collections.EMPTY_SET);

        public static final boolean f36598d = true;

        public final Map f36599a;

        public final Set f36600b;

        public a(Map map, Set set) {
            this.f36599a = map;
            this.f36600b = set;
        }

        public static a a() {
            return f36597c;
        }

        public a a(final Collection<String> collection) {
            if (collection.isEmpty()) {
                return this;
            }
            HashSet hashSet = new HashSet();
            hashSet.addAll(this.f36600b);
            hashSet.addAll(collection);
            final HashMap hashMap = new HashMap();
            this.f36599a.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    M3.a.a(Collection.this, hashMap, (String) obj, (H3.e) obj2);
                }
            });
            return new a(hashMap, hashSet);
        }

        public static void a(Collection collection, HashMap hashMap, String str, H3.e eVar) {
            if (collection.contains(str)) {
                return;
            }
            hashMap.put(str, eVar);
        }

        public a a(final Map<String, H3.e> map) {
            if (map.isEmpty()) {
                return this;
            }
            HashMap hashMap = new HashMap();
            hashMap.putAll(this.f36599a);
            hashMap.putAll(map);
            final HashSet hashSet = new HashSet();
            this.f36600b.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    M3.a.a(Map.this, hashSet, (String) obj);
                }
            });
            return new a(hashMap, hashSet);
        }

        public static void a(Map map, HashSet hashSet, String str) {
            if (map.containsKey(str)) {
                return;
            }
            hashSet.add(str);
        }
    }

    public M3(IdentityHashMap identityHashMap, IdentityHashMap identityHashMap2) {
        this.f36595a = identityHashMap;
        this.f36596b = identityHashMap2;
    }

    public static M3 a(H2 h22, final C4798y c4798y) {
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) h22);
        return a(c4798y, c6286Yx0.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                M3.a(C4798y.this, (H2) obj, (C6286Yx0) obj2);
            }
        }).a());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.tools.r8.graph.h] */
    public static M3 a(C4798y<?> c4798y) {
        return a(c4798y, c4798y.f().d());
    }

    public static M3 a(C4798y c4798y, Collection collection) {
        c4798y.E().getClass();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                M3.a(Map.this, identityHashMap2, (H2) obj);
            }
        });
        return new M3(identityHashMap, identityHashMap2);
    }

    public static void a(final Map map, Map map2, H2 h22) {
        E e10;
        h22.N0().getClass();
        map.put(h22.getReference(), N3.a(h22.f36259s.c()));
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                M3.a(Map.this, (H5) obj);
            }
        });
        C4425e4 P02 = h22.P0();
        if (P02 != null) {
            map2.put(h22.getType(), P02.d());
        }
        C4500i3 O02 = h22.O0();
        if (O02 != null) {
            M2 type = h22.getType();
            if (O02.a() != null) {
                e10 = O02.a();
            } else {
                e10 = O02.f37289a;
            }
            map2.put(type, e10);
        }
    }

    public static void a(Map map, H5 h52) {
        H3.g A02 = h52.d().A0();
        A02.getClass();
        map.put(h52.getReference(), N3.a(A02.f36395a));
    }

    public static void a(C4798y c4798y, H2 h22, C6286Yx0 c6286Yx0) {
        E0 g10;
        if (h22.O0() != null) {
            C4500i3 O02 = h22.O0();
            A2 a22 = O02.f37290b;
            g10 = c4798y.g(a22 != null ? a22.s0() : O02.f37289a);
        } else {
            g10 = h22.P0() != null ? c4798y.g(h22.P0().d()) : null;
        }
        if (g10 == null || !g10.e0()) {
            return;
        }
        c6286Yx0.b((C6286Yx0) g10.d0());
    }

    public final a a(C4798y c4798y, J2 j22, Predicate predicate) {
        if (f36594c || !predicate.test(j22.S())) {
            return a(c4798y, j22, predicate, false, null);
        }
        throw new AssertionError((Object) "Building context for pruned type");
    }

    public final a a(C4798y c4798y, J2 j22, Predicate predicate, boolean z10, Object obj) {
        Object obj2;
        N3 n32;
        if (j22 == null) {
            return a.a();
        }
        if (obj == null) {
            obj2 = j22;
        } else if (!(obj instanceof J2)) {
            obj2 = obj;
        } else {
            if (obj == j22) {
                return a.a();
            }
            Set c10 = AbstractC5513Ll0.c();
            c10.add((J2) obj);
            obj2 = c10;
        }
        if (!f36594c && !(obj2 instanceof J2) && !(obj2 instanceof Set)) {
            throw new AssertionError();
        }
        if ((obj2 instanceof Set) && !((Set) obj2).add(j22)) {
            return a.a();
        }
        M2 S10 = j22.S();
        E0 c11 = c4798y.f().c(S10);
        boolean z11 = false;
        boolean z12 = z10 | (c11 == null && c4798y.f().i() && !c4798y.M().f().f37305h.f57888a.contains(S10));
        N3 n33 = (N3) this.f36595a.get(S10);
        boolean z13 = z12 | ((c11 == null || n33 == null || n33.f36635a.isEmpty() || !c11.N0().c().isEmpty()) ? false : true);
        J2 j23 = (J2) this.f36596b.get(S10);
        a a10 = a(c4798y, j23, predicate, z13 || a(c4798y, j23, S10, predicate), obj2);
        a10.getClass();
        if (n33 != null) {
            if (z13) {
                a10 = a10.a(n33.f36635a);
            } else {
                a10 = a10.a(n33.f36635a.o());
            }
        }
        if (!j22.r0() || (n32 = (N3) this.f36595a.get(j22)) == null) {
            return a10;
        }
        if (c11 == null || z13) {
            z11 = z13;
        } else {
            C4516j1 b10 = c11.b(j22.n0());
            if (b10 == null || (!n32.f36635a.isEmpty() && b10.A0().f36395a.isEmpty())) {
                z11 = true;
            }
        }
        a10.getClass();
        if (z11) {
            return a10.a(n32.f36635a);
        }
        return a10.a(n32.f36635a.o());
    }

    public static boolean a(C4798y c4798y, J2 j22, M2 m22, Predicate predicate) {
        if (!f36594c && m22 == null) {
            throw new AssertionError();
        }
        if (j22 != null && !predicate.test(j22.S()) && !predicate.test(m22)) {
            E0 c10 = c4798y.f().c(j22.S());
            E0 c11 = c4798y.f().c(m22);
            if (c10 != null && c11 != null) {
                if (c11.O0() != null) {
                    return j22.r0() ? c11.O0().a() != j22 : c11.O0().f37289a != j22;
                }
                C4425e4 P02 = c11.P0();
                if (P02 != null && P02.d() == j22) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean a(C4798y c4798y, M2 m22, Predicate predicate) {
        if (predicate.test(m22)) {
            return false;
        }
        E0 g10 = c4798y.g(m22);
        if (g10 == null || g10.v1()) {
            return true;
        }
        g10.N0().getClass();
        return !g10.N0().c().isEmpty();
    }
}
