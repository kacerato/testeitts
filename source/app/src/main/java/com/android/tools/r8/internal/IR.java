package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4551kh;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class IR {

    public final AbstractC8552nC f41082a;

    public final AbstractC8552nC f41083b;

    public final AbstractC8552nC f41084c;

    public final AbstractC8552nC f41085d;

    public final AbstractC8552nC f41086e;

    public final AbstractC7552hC f41087f;

    public final QC f41088g;

    public final QC f41089h;

    public IR(AbstractC8552nC abstractC8552nC, AbstractC8552nC abstractC8552nC2, AbstractC8552nC abstractC8552nC3, AbstractC8552nC abstractC8552nC4, AbstractC8552nC abstractC8552nC5, AbstractC7552hC abstractC7552hC, QC qc2, QC qc3) {
        this.f41082a = abstractC8552nC;
        this.f41083b = abstractC8552nC2;
        this.f41084c = abstractC8552nC3;
        this.f41085d = abstractC8552nC4;
        this.f41086e = abstractC8552nC5;
        this.f41087f = abstractC7552hC;
        this.f41088g = qc2;
        this.f41089h = qc3;
    }

    public static a a(C4724u1 c4724u1, C5094Ef0 c5094Ef0, Origin origin) {
        return new a(c4724u1, c5094Ef0, origin, new HashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new IdentityHashMap(), new ArrayList(), AbstractC5513Ll0.c(), AbstractC5513Ll0.c());
    }

    public static class a {

        public static final boolean f41090l = true;

        public final C4724u1 f41091a;

        public final C5094Ef0 f41092b;

        public final Origin f41093c;

        public final HashMap f41094d;

        public final IdentityHashMap f41095e;

        public final IdentityHashMap f41096f;

        public final IdentityHashMap f41097g;

        public final IdentityHashMap f41098h;

        public final ArrayList f41099i;

        public final Set f41100j;

        public final Set f41101k;

        public a(C4724u1 c4724u1, C5094Ef0 c5094Ef0, Origin origin, Map map, Map map2, Map map3, Map map4, Map map5, List list, Set set, Set set2) {
            this.f41091a = c4724u1;
            this.f41092b = c5094Ef0;
            this.f41093c = origin;
            this.f41094d = new HashMap(map);
            this.f41095e = new IdentityHashMap(map2);
            this.f41096f = new IdentityHashMap(map3);
            this.f41097g = new IdentityHashMap(map4);
            this.f41098h = new IdentityHashMap(map5);
            this.f41099i = new ArrayList(list);
            Set c10 = AbstractC5513Ll0.c();
            this.f41100j = c10;
            c10.addAll(set);
            Set c11 = AbstractC5513Ll0.c();
            this.f41101k = c11;
            c11.addAll(set2);
        }

        public static int d(String str, String str2) {
            int lastIndexOf = str.lastIndexOf(35);
            if (lastIndexOf > 0 && lastIndexOf < str.length() - 1) {
                return lastIndexOf;
            }
            throw new C5325If("Invalid " + str2 + " specification (# position) in " + str + ".");
        }

        public final void a(Map map, Comparable comparable, Comparable comparable2, String str) {
            if (!map.containsKey(comparable)) {
                map.put(comparable, comparable2);
                return;
            }
            C5094Ef0 c5094Ef0 = this.f41092b;
            c5094Ef0.a(null, new StringDiagnostic("Invalid desugared library configuration.  Duplicate assignment of key: '" + ((Object) comparable) + "' in sections for '" + str + "'", this.f41093c));
            throw c5094Ef0.f39969c;
        }

        public final void b(String str, String str2) {
            int d10 = d(str, "retarget core library member");
            com.android.tools.r8.graph.L2 b10 = this.f41091a.b(str.substring(d10 + 1));
            this.f41096f.putIfAbsent(b10, new IdentityHashMap());
            Map map = (Map) this.f41096f.get(b10);
            Comparable d11 = this.f41091a.d(C4932Bl.H(str.substring(0, d10)));
            Comparable d12 = this.f41091a.d(C4932Bl.H(str2));
            if (!f41090l && map.containsKey(d11)) {
                throw new AssertionError();
            }
            a(map, d11, d12, "retarget_lib_member");
        }

        public a c(String str, String str2) {
            a(this.f41094d, str, str2, "rewrite_prefix");
            return this;
        }

        public a a(String str, String str2) {
            a(this.f41097g, this.f41091a.d(C4932Bl.H(str)), this.f41091a.d(C4932Bl.H(str2)), "backport");
            return this;
        }

        public IR a() {
            b();
            return new IR(AbstractC8552nC.a(this.f41094d), AbstractC8552nC.a(this.f41095e), AbstractC8552nC.a(this.f41096f), AbstractC8552nC.a(this.f41097g), AbstractC8552nC.a(this.f41098h), AbstractC7552hC.a(this.f41099i), QC.a(this.f41100j), QC.a(this.f41101k));
        }

        public final void b() {
            Set o10 = this.f41098h.o();
            Set set = this.f41101k;
            if (o10 == null) {
                throw new NullPointerException("set1");
            }
            if (set != null) {
                C4991Cl0 c4991Cl0 = new C4991Cl0(o10, set);
                if (Collections.disjoint(set, o10)) {
                    return;
                }
                C5094Ef0 c5094Ef0 = this.f41092b;
                c5094Ef0.a(null, new StringDiagnostic("Invalid desugared library configuration. Duplicate types in custom conversions and wrapper conversions: " + String.join(", ", (Iterable<? extends CharSequence>) c4991Cl0.stream().map(new C4551kh()).collect(Collectors.toSet())), this.f41093c));
                throw c5094Ef0.f39969c;
            }
            throw new NullPointerException("set2");
        }
    }
}
