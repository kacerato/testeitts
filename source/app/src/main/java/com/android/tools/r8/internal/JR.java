package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.IA;
import com.android.tools.r8.origin.Origin;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public class JR {

    public static final C2 f41393d = C2.N_MR1;

    public static final boolean f41394e = true;

    public final C8659ns0 f41395a;

    public final HashSet f41396b = new HashSet();

    public final HashSet f41397c = new HashSet();

    public JR(C8659ns0 c8659ns0) {
        this.f41395a = c8659ns0;
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [java.util.AbstractCollection, java.util.List] */
    public static SA a(MR mr) {
        RA ra2 = new RA();
        ra2.f43833c = mr.f42294c;
        ra2.f43836f = mr.f42297f;
        ra2.f43834d = mr.f42295d;
        ra2.f43831a = mr.f42292a;
        ra2.f43835e = Boolean.valueOf(mr.f42296e);
        String replace = mr.f42293b.replace('.', '/');
        ra2.f43832b = replace;
        boolean z10 = RA.f43830g;
        if (!z10 && replace == null) {
            throw new AssertionError();
        }
        if (z10 || ra2.f43835e != null) {
            return new SA(ra2.f43831a, replace, ra2.f43833c, ra2.f43834d, ra2.f43835e.booleanValue(), ra2.f43836f);
        }
        throw new AssertionError();
    }

    public static void c(final IA.a aVar, String str, String str2) {
        if (str.startsWith("j$")) {
            if (!f41394e && !str2.startsWith(SuffixConstants.EXTENSION_java)) {
                throw new AssertionError();
            }
            aVar.a(str2, str, str2);
            return;
        }
        if (str.equals("__wrapper__.")) {
            C6620bf0.a(2, new Map.Entry[]{new C9053qC("java.nio.", "j$.nio."), new C9053qC("java.io.", "j$.io.")}).forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    JR.b(IA.a.this, (String) obj, (String) obj2);
                }
            });
        } else {
            aVar.a(str, str2);
        }
    }

    public static void b(IA.a aVar, String str, String str2) {
        aVar.a(str, "__wrapper__." + str, str);
        aVar.a(str, "__wrapper__." + str2, str2);
    }

    public C7767iY a(C8600nY c8600nY, AbstractC4780x0 abstractC4780x0) {
        IA.a b10;
        this.f41395a.b("Legacy to human all API convert");
        Origin origin = c8600nY.f50974a;
        SA a10 = a(c8600nY.f50975b);
        HashMap a11 = a(c8600nY.f50976c, abstractC4780x0, origin);
        HashMap a12 = a(c8600nY.f50978e, abstractC4780x0, origin);
        HashMap a13 = a(c8600nY.f50977d, abstractC4780x0, origin);
        String b11 = a10.b();
        C2 c22 = f41393d;
        V2 v22 = new V2(C2.a(c22.d()), null);
        IA ia2 = (IA) a13.get(v22);
        if (ia2 != null) {
            IA.a b12 = ia2.b(abstractC4780x0.f38366d.f50691j, origin);
            a(b11, abstractC4780x0.f38367e, c22, b12);
            a13.put(v22, b12.a());
        }
        a(abstractC4780x0.f38366d.f50691j);
        C7767iY c7767iY = new C7767iY(origin, a10, a11, a13, a12);
        C5094Ef0 c5094Ef0 = abstractC4780x0.f38366d.f50691j;
        HashSet hashSet = new HashSet();
        hashSet.addAll(c7767iY.a().o());
        hashSet.addAll(c7767iY.b().o());
        hashSet.addAll(c7767iY.c().o());
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            V2 v23 = (V2) it.next();
            Map<V2, IA> a14 = c7767iY.a();
            Map<V2, IA> b13 = c7767iY.b();
            Map<V2, IA> c10 = c7767iY.c();
            IA ia3 = b13.get(v23);
            IA ia4 = c10.get(v23);
            if (ia3 != null && ia4 != null) {
                Origin origin2 = c7767iY.f48963a;
                if (a14.get(v23) == null) {
                    b10 = IA.a(c5094Ef0, origin2);
                } else {
                    b10 = a14.get(v23).b(c5094Ef0, origin2);
                }
                IA.a a15 = IA.a(c5094Ef0, origin2);
                IA.a a16 = IA.a(c5094Ef0, origin2);
                AbstractC7932jY.b(ia3, ia4, b10, a15);
                AbstractC7932jY.b(ia4, ia3, b10, a16);
                IA a17 = b10.a();
                if (a17.k()) {
                    a14.remove(v23);
                } else {
                    a14.put(v23, a17);
                }
                IA a18 = a15.a();
                if (a18.k()) {
                    b13.remove(v23);
                } else {
                    b13.put(v23, a18);
                }
                IA a19 = a16.a();
                if (a19.k()) {
                    c10.remove(v23);
                } else {
                    c10.put(v23, a19);
                }
            }
        }
        this.f41395a.d();
        return c7767iY;
    }

    public final void a(IA.a aVar, AbstractC4780x0 abstractC4780x0, IR ir, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        a(aVar, abstractC4780x0, m22, m23, ir.f41087f);
    }

    public final void a(C5094Ef0 c5094Ef0) {
        if (!this.f41396b.isEmpty()) {
            c5094Ef0.c("Cannot retarget core lib member for missing classes: " + ((Object) this.f41396b) + ". This usually means that the compilation SDK is absent or too old.");
        }
        if (this.f41397c.isEmpty()) {
            return;
        }
        c5094Ef0.c("Should have found a method (library specifications) for " + ((Object) this.f41397c) + ". This usually means that the compilation SDK is absent or too old.");
    }

    public static void a(String str, C4724u1 c4724u1, C2 c22, IA.a aVar) {
        if (c22.e(f41393d)) {
            com.android.tools.r8.graph.L2 b10 = c4724u1.b("deepEquals0");
            com.android.tools.r8.graph.M2 m22 = c4724u1.f37849E1;
            com.android.tools.r8.graph.M2 m23 = c4724u1.f38068i2;
            com.android.tools.r8.graph.A2 a10 = c4724u1.a(c4724u1.c(c4724u1.f38011b1), c4724u1.a(m22, m23, m23), b10);
            aVar.a(aVar.f41019j, a10, c4724u1.d("Ljava/util/DesugarArrays;"), "retarget_method");
            aVar.f41029t.put(a10, com.android.tools.r8.graph.L4.b(10, false));
            com.android.tools.r8.graph.L2 b11 = c4724u1.b("getTimeZone");
            aVar.a(aVar.f41019j, c4724u1.a(c4724u1.d("Ljava/util/TimeZone;"), c4724u1.a(c4724u1.d("Ljava/util/TimeZone;"), c4724u1.d("Ljava/time/ZoneId;")), b11), c4724u1.d("Ljava/util/DesugarTimeZone;"), "retarget_method");
        }
        if (str.contains(":1.2")) {
            aVar.a("sun.misc.Desugar", "jdk.internal.misc.", "j$.sun.misc.Desugar");
        }
    }

    public final HashMap a(CF cf2, final AbstractC4780x0 abstractC4780x0, final Origin origin) {
        final HashMap hashMap = new HashMap();
        cf2.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                JR.this.a(hashMap, abstractC4780x0, origin, (Integer) obj, (IR) obj2);
            }
        });
        return hashMap;
    }

    public final void a(Map map, AbstractC4780x0 abstractC4780x0, Origin origin, Integer num, IR ir) {
        map.put(new V2(C2.a(num.intValue()), null), a(ir, abstractC4780x0, origin));
    }

    public final IA a(final IR ir, final AbstractC4780x0 abstractC4780x0, Origin origin) {
        this.f41395a.b("Convert rewriting flags");
        final IA.a a10 = IA.a(abstractC4780x0.f38366d.f50691j, origin);
        ir.f41082a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                JR.this.a(a10, (String) obj, (String) obj2);
            }
        });
        ir.f41083b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                JR.this.a(a10, abstractC4780x0, ir, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        AbstractC8552nC abstractC8552nC = ir.f41085d;
        Objects.requireNonNull(a10);
        abstractC8552nC.forEach(new LJ0(a10));
        ir.f41086e.forEach(new MJ0(a10));
        ir.f41088g.forEach(new NJ0(a10));
        ir.f41089h.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                IA.a.this.b((com.android.tools.r8.graph.M2) obj);
            }
        });
        ir.f41084c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                JR.this.b(a10, abstractC4780x0, (com.android.tools.r8.graph.L2) obj, (Map) obj2);
            }
        });
        IA a11 = a10.a();
        this.f41395a.d();
        return a11;
    }

    public final void a(IA.a aVar, String str, String str2) {
        c(aVar, str, str2);
    }

    public final void a(IA.a aVar, AbstractC4780x0 abstractC4780x0, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, AbstractC7552hC abstractC7552hC) {
        com.android.tools.r8.graph.E0 g10 = abstractC4780x0.g(m22);
        final Set c10 = AbstractC5513Ll0.c();
        final Set c11 = AbstractC5513Ll0.c();
        Iterator it = abstractC7552hC.iterator();
        while (it.hasNext()) {
            C8699o50 c8699o50 = (C8699o50) it.next();
            com.android.tools.r8.graph.E0 g11 = abstractC4780x0.g((com.android.tools.r8.graph.M2) c8699o50.a());
            if (!f41394e && g11 == null) {
                throw new AssertionError();
            }
            Iterator it2 = a((com.android.tools.r8.graph.L2) c8699o50.b(), g11, aVar, abstractC4780x0).iterator();
            while (it2.hasNext()) {
                c11.add(((com.android.tools.r8.graph.H0) it2.next()).getReference());
            }
        }
        g10.i(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return JR.a(Set.this, (C4516j1) obj);
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.add(((C4516j1) obj).getReference());
            }
        });
        aVar.a(m22, new JA(m23, c10));
    }

    public static boolean a(Set set, C4516j1 c4516j1) {
        return c4516j1.g1() && !set.contains(c4516j1.getReference());
    }

    public final void b(final IA.a aVar, final AbstractC4780x0 abstractC4780x0, final com.android.tools.r8.graph.L2 l22, Map map) {
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                JR.this.a(abstractC4780x0, l22, aVar, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
    }

    public final void a(AbstractC4780x0 abstractC4780x0, com.android.tools.r8.graph.L2 l22, IA.a aVar, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        com.android.tools.r8.graph.E0 g10 = abstractC4780x0.g(m22);
        if (g10 == null) {
            if (f41394e) {
                this.f41396b.add(m22.j0());
                return;
            }
            throw new AssertionError((Object) ("Cannot retarget core lib member for missing class " + ((Object) m22)));
        }
        for (com.android.tools.r8.graph.H0 h02 : a(l22, g10, aVar, abstractC4780x0)) {
            C4516j1 d10 = h02.d();
            if (!d10.w0() && !d10.h1() && !h02.getHolder().p1()) {
                aVar.a(aVar.f41020k, h02.getReference(), m23, "retarget_method_with_emulated_dispatch");
            } else {
                aVar.a(aVar.f41019j, h02.getReference(), m23, "retarget_method");
            }
        }
    }

    public final List a(final com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.E0 e02, IA.a aVar, AbstractC4780x0 abstractC4780x0) {
        final ArrayList arrayList = new ArrayList();
        e02.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add((com.android.tools.r8.graph.H0) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return JR.a(com.android.tools.r8.graph.L2.this, (C4516j1) obj);
            }
        });
        if (arrayList.isEmpty() && l22.toString().equals("transferTo") && e02.f36245e.toString().equals("java.io.InputStream")) {
            C4724u1 c4724u1 = abstractC4780x0.f38367e;
            com.android.tools.r8.graph.A2 a10 = c4724u1.a(e02.f36245e, c4724u1.a(c4724u1.f37891K1, c4724u1.d("Ljava/io/OutputStream;")), l22);
            com.android.tools.r8.graph.L4 b10 = com.android.tools.r8.graph.L4.b(1, false);
            aVar.f41029t.put(a10, b10);
            return new C5920Sm0(com.android.tools.r8.graph.H0.a(e02, C4516j1.K0().a(a10).a(b10).a()));
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        String str = e02.j0() + "." + ((Object) l22);
        if (f41394e) {
            this.f41397c.add(str);
            return arrayList;
        }
        throw new AssertionError((Object) ("Should have found a method (library specifications) for " + str));
    }

    public static boolean a(com.android.tools.r8.graph.L2 l22, C4516j1 c4516j1) {
        return c4516j1.C0() == l22;
    }
}
