package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.internal.IA;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

public class IA {

    public final AbstractC8552nC f40990a;

    public final QC f40991b;

    public final QC f40992c;

    public final AbstractC8552nC f40993d;

    public final AbstractC8552nC f40994e;

    public final AbstractC8552nC f40995f;

    public final AbstractC8552nC f40996g;

    public final AbstractC8552nC f40997h;

    public final AbstractC8552nC f40998i;

    public final AbstractC8552nC f40999j;

    public final AbstractC8552nC f41000k;

    public final AbstractC8552nC f41001l;

    public final AbstractC8552nC f41002m;

    public final AbstractC8552nC f41003n;

    public final QC f41004o;

    public final AbstractC8552nC f41005p;

    public final QC f41006q;

    public final AbstractC8552nC f41007r;

    public final AbstractC8552nC f41008s;

    public static class a {

        public static final boolean f41009v = true;

        public final C5094Ef0 f41010a;

        public final Origin f41011b;

        public final HashMap f41012c;

        public final HashSet f41013d;

        public final HashSet f41014e;

        public final HashMap f41015f;

        public final IdentityHashMap f41016g;

        public final IdentityHashMap f41017h;

        public final IdentityHashMap f41018i;

        public final IdentityHashMap f41019j;

        public final IdentityHashMap f41020k;

        public final IdentityHashMap f41021l;

        public final IdentityHashMap f41022m;

        public final IdentityHashMap f41023n;

        public final IdentityHashMap f41024o;

        public final IdentityHashMap f41025p;

        public final Set f41026q;

        public final IdentityHashMap f41027r;

        public final Set f41028s;

        public final IdentityHashMap f41029t;

        public final IdentityHashMap f41030u;

        public a(C5094Ef0 c5094Ef0, Origin origin, Map map, Set set, Set set2, Map map2, Map map3, Map map4, Map map5, Map map6, Map map7, Map map8, Map map9, Map map10, Map map11, Map map12, Set set3, Map map13, Set set4, Map map14, Map map15) {
            this.f41010a = c5094Ef0;
            this.f41011b = origin;
            this.f41012c = new HashMap(map);
            this.f41013d = AbstractC5513Ll0.a((Collection) set);
            this.f41014e = AbstractC5513Ll0.a((Collection) set2);
            this.f41015f = new HashMap(map2);
            this.f41016g = new IdentityHashMap(map3);
            this.f41017h = new IdentityHashMap(map4);
            this.f41018i = new IdentityHashMap(map5);
            this.f41019j = new IdentityHashMap(map6);
            this.f41020k = new IdentityHashMap(map7);
            this.f41021l = new IdentityHashMap(map8);
            this.f41022m = new IdentityHashMap(map9);
            this.f41023n = new IdentityHashMap(map10);
            this.f41024o = new IdentityHashMap(map11);
            this.f41025p = new IdentityHashMap(map12);
            Set c10 = AbstractC5513Ll0.c();
            this.f41026q = c10;
            c10.addAll(set3);
            this.f41027r = new IdentityHashMap(map13);
            Set c11 = AbstractC5513Ll0.c();
            this.f41028s = c11;
            c11.addAll(set4);
            this.f41029t = new IdentityHashMap(map14);
            this.f41030u = new IdentityHashMap(map15);
        }

        public final void a(Map map, Object obj, Object obj2, String str) {
            if (map.containsKey(obj) && !map.get(obj).equals(obj2)) {
                C5094Ef0 c5094Ef0 = this.f41010a;
                c5094Ef0.a(null, new StringDiagnostic("Invalid desugared library configuration.  Duplicate assignment of key: '" + obj + "' in sections for '" + str + "'", this.f41011b));
                throw c5094Ef0.f39969c;
            }
            map.put(obj, obj2);
        }

        public a b(String str) {
            this.f41014e.add(str);
            return this;
        }

        public final a b(com.android.tools.r8.graph.M2 m22) {
            this.f41027r.put(m22, Collections.EMPTY_SET);
            return this;
        }

        public final a b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.M2 m22) {
            a(this.f41019j, a22, m22, "retarget_method");
            return this;
        }

        public final a b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
            a(this.f41024o, m22, m23, "backport");
            return this;
        }

        public a a(String str, String str2) {
            a(this.f41012c, str, str2, "rewrite_prefix");
            return this;
        }

        public final void a(String str, String str2, String str3) {
            a((Map) this.f41015f.computeIfAbsent(str, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return IA.a.a((String) obj);
                }
            }), str2, str3, "rewrite_derived_prefix");
        }

        public static Map a(String str) {
            return new HashMap();
        }

        public final a a(com.android.tools.r8.graph.M2 m22, JA ja2) {
            if (!f41009v && ja2 == null) {
                throw new AssertionError();
            }
            JA ja3 = (JA) this.f41016g.get(m22);
            if (ja3 != null) {
                ja2 = ja2.a(ja3);
            }
            this.f41016g.put(m22, ja2);
            return this;
        }

        public final a a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
            a(this.f41025p, m22, m23, "custom_conversion");
            return this;
        }

        public final a a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.M2 m22) {
            a(this.f41020k, a22, m22, "retarget_method_with_emulated_dispatch");
            return this;
        }

        public a a(C4554l1 c4554l1, C4554l1 c4554l12) {
            a(this.f41017h, c4554l1, c4554l12, "retarget_static_field");
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(final com.android.tools.r8.graph.A2 a22, int i10, com.android.tools.r8.graph.A2 a23) {
            com.android.tools.r8.graph.A2[] a2Arr = (com.android.tools.r8.graph.A2[]) this.f41023n.computeIfAbsent(a22, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return IA.a.a(com.android.tools.r8.graph.A2.this, (com.android.tools.r8.graph.A2) obj);
                }
            });
            if (i10 == -1) {
                i10 = a22.w0();
            }
            if (!f41009v && a2Arr[i10] != null) {
                throw new AssertionError();
            }
            a2Arr[i10] = a23;
        }

        public static com.android.tools.r8.graph.A2[] a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
            return new com.android.tools.r8.graph.A2[a22.w0() + 1];
        }

        public final a a(com.android.tools.r8.graph.M2 m22) {
            this.f41026q.add(m22);
            return this;
        }

        public a a(C4554l1 c4554l1, C4537k3 c4537k3) {
            this.f41030u.put(c4554l1, c4537k3);
            return this;
        }

        public IA a() {
            return new IA(AbstractC8552nC.a(this.f41012c), QC.a(this.f41013d), QC.a(this.f41014e), AbstractC8552nC.a(this.f41015f), AbstractC8552nC.a(this.f41016g), AbstractC8552nC.a(this.f41017h), AbstractC8552nC.a(this.f41018i), AbstractC8552nC.a(this.f41019j), AbstractC8552nC.a(this.f41020k), AbstractC8552nC.a(this.f41021l), AbstractC8552nC.a(this.f41022m), AbstractC8552nC.a(this.f41023n), AbstractC8552nC.a(this.f41024o), AbstractC8552nC.a(this.f41025p), QC.a(this.f41026q), AbstractC8552nC.a(this.f41027r), QC.a(this.f41028s), AbstractC8552nC.a(this.f41029t), AbstractC8552nC.a(this.f41030u));
        }
    }

    public IA(AbstractC8552nC abstractC8552nC, QC qc2, QC qc3, AbstractC8552nC abstractC8552nC2, AbstractC8552nC abstractC8552nC3, AbstractC8552nC abstractC8552nC4, AbstractC8552nC abstractC8552nC5, AbstractC8552nC abstractC8552nC6, AbstractC8552nC abstractC8552nC7, AbstractC8552nC abstractC8552nC8, AbstractC8552nC abstractC8552nC9, AbstractC8552nC abstractC8552nC10, AbstractC8552nC abstractC8552nC11, AbstractC8552nC abstractC8552nC12, QC qc4, AbstractC8552nC abstractC8552nC13, QC qc5, AbstractC8552nC abstractC8552nC14, AbstractC8552nC abstractC8552nC15) {
        this.f40990a = abstractC8552nC;
        this.f40991b = qc2;
        this.f40992c = qc3;
        this.f40993d = abstractC8552nC2;
        this.f40994e = abstractC8552nC3;
        this.f40995f = abstractC8552nC4;
        this.f40996g = abstractC8552nC5;
        this.f40997h = abstractC8552nC6;
        this.f40998i = abstractC8552nC7;
        this.f40999j = abstractC8552nC8;
        this.f41000k = abstractC8552nC9;
        this.f41001l = abstractC8552nC10;
        this.f41002m = abstractC8552nC11;
        this.f41003n = abstractC8552nC12;
        this.f41004o = qc4;
        this.f41005p = abstractC8552nC13;
        this.f41006q = qc5;
        this.f41007r = abstractC8552nC14;
        this.f41008s = abstractC8552nC15;
    }

    public static a a(C5094Ef0 c5094Ef0, Origin origin) {
        return new a(c5094Ef0, origin, new HashMap(), AbstractC5513Ll0.c(), AbstractC5513Ll0.c(), new HashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), AbstractC5513Ll0.c(), new IdentityHashMap(), AbstractC5513Ll0.c(), new IdentityHashMap(), new IdentityHashMap());
    }

    public final a b(C5094Ef0 c5094Ef0, Origin origin) {
        return new a(c5094Ef0, origin, this.f40990a, this.f40991b, this.f40992c, this.f40993d, this.f40994e, this.f40995f, this.f40996g, this.f40997h, this.f40998i, this.f40999j, this.f41000k, this.f41001l, this.f41002m, this.f41003n, this.f41004o, this.f41005p, this.f41006q, this.f41007r, this.f41008s);
    }

    public Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> c() {
        return this.f41003n;
    }

    public Set<com.android.tools.r8.graph.M2> d() {
        return this.f41004o;
    }

    public Map<com.android.tools.r8.graph.M2, JA> e() {
        return this.f40994e;
    }

    public Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> f() {
        return this.f41002m;
    }

    public Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.M2> g() {
        return this.f40997h;
    }

    public Map<String, Map<String, String>> h() {
        return this.f40993d;
    }

    public Map<String, String> i() {
        return this.f40990a;
    }

    public Map<com.android.tools.r8.graph.M2, Set<com.android.tools.r8.graph.A2>> j() {
        return this.f41005p;
    }

    public final boolean k() {
        return this.f40990a.isEmpty() && this.f40993d.isEmpty() && this.f40992c.isEmpty() && this.f40994e.isEmpty() && this.f40996g.isEmpty() && this.f40997h.isEmpty() && this.f40998i.isEmpty() && this.f40995f.isEmpty();
    }

    public Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.L4> b() {
        return this.f41007r;
    }

    public Map<C4554l1, C4537k3> a() {
        return this.f41008s;
    }
}
