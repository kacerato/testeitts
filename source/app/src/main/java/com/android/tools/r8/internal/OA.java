package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4570lh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class OA {

    public C4514j f42808a;

    public C5094Ef0 f42809b;

    public final Set f42810c = AbstractC5513Ll0.c();

    public final C8659ns0 f42811d;

    public OA(C8659ns0 c8659ns0) {
        this.f42811d = c8659ns0;
    }

    public static Set b(HashMap hashMap) {
        final Set c10 = AbstractC5513Ll0.c();
        hashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Set.this.addAll(((CU) obj2).g().o());
            }
        });
        return c10;
    }

    public C8934pY a(C7767iY c7767iY, AbstractC4780x0 abstractC4780x0) {
        this.f42811d.b("Legacy to human all API convert");
        this.f42809b = abstractC4780x0.f38366d.f50691j;
        C4477h a10 = C4477h.a(abstractC4780x0, com.android.tools.r8.synthesis.E.d());
        if (!C4514j.f37304i && a10.h()) {
            throw new AssertionError();
        }
        this.f42808a = new C4514j(a10);
        SA d10 = c7767iY.d();
        EU eu = new EU(d10.c(), d10.d(), d10.b(), d10.f44146d, d10.f44147e, d10.a());
        String e10 = eu.e();
        String c10 = eu.c();
        HashMap a11 = a((Map) c7767iY.a(), e10, true, c10);
        HashMap a12 = a((Map) c7767iY.c(), e10, false, c10);
        HashMap a13 = a((Map) c7767iY.b(), e10, true, c10);
        Set b10 = b(a11);
        Set b11 = b(a12);
        Set b12 = b(a13);
        if (b10 == null) {
            throw new NullPointerException("set1");
        }
        if (b11 != null) {
            new C4991Cl0(b10, b11);
            if (Collections.disjoint(b11, b10)) {
                if (b12 != null) {
                    new C4991Cl0(b10, b12);
                    if (Collections.disjoint(b12, b10)) {
                        new C4991Cl0(b12, b11);
                        if (Collections.disjoint(b11, b12)) {
                            a(a11);
                            a(a12);
                            a(a13);
                            C8934pY c8934pY = new C8934pY(eu, a11, a13, a12);
                            this.f42811d.d();
                            return c8934pY;
                        }
                    }
                } else {
                    throw new NullPointerException("set2");
                }
            }
            throw new C5325If("Cannot have emulated interface split across flag types");
        }
        throw new NullPointerException("set2");
    }

    public final void b(String str, Set set) {
        ArrayList arrayList = new ArrayList(set);
        arrayList.sort(new u.C1());
        a(str, arrayList);
    }

    public static void a(HashMap hashMap) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        hashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((CU) obj2).g().forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj3, Object obj4) {
                        OA.a(Map.this, r2, (com.android.tools.r8.graph.M2) obj3, (C7163eu) obj4);
                    }
                });
            }
        });
        identityHashMap.o().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return OA.a(Map.this, (com.android.tools.r8.graph.M2) obj);
            }
        });
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                OA.a((com.android.tools.r8.graph.M2) obj, (List) obj2);
            }
        });
    }

    public static void a(Map map, V2 v22, com.android.tools.r8.graph.M2 m22, C7163eu c7163eu) {
        map.putIfAbsent(m22, new ArrayList());
        ((List) map.get(m22)).add(v22);
    }

    public static boolean a(Map map, com.android.tools.r8.graph.M2 m22) {
        return ((List) map.get(m22)).size() == 1;
    }

    public static void a(com.android.tools.r8.graph.M2 m22, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            V2 v22 = (V2) it.next();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                V2 v23 = (V2) it2.next();
                if (!Objects.equals(v22, v23) && v22.a(v23)) {
                    throw new C5325If("Unsupported Machine specification for " + ((Object) m22) + " " + ((Object) v22) + " " + ((Object) v23));
                }
            }
        }
    }

    public final HashMap a(Map map, final String str, final boolean z10, final String str2) {
        final HashMap hashMap = new HashMap();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                OA.this.a(hashMap, str, z10, str2, (V2) obj, (IA) obj2);
            }
        });
        return hashMap;
    }

    public final void a(Map map, String str, boolean z10, String str2, V2 v22, IA ia2) {
        map.put(v22, a(ia2, str, z10, str2));
    }

    public C10261xU a(DA da2, AbstractC4780x0 abstractC4780x0) {
        this.f42811d.b("Human to machine convert");
        this.f42809b = abstractC4780x0.f38366d.f50691j;
        C4477h a10 = C4477h.a(abstractC4780x0, com.android.tools.r8.synthesis.E.d());
        if (!C4514j.f37304i && a10.h()) {
            throw new AssertionError();
        }
        this.f42808a = new C4514j(a10);
        AbstractC7087eS.a(abstractC4780x0, da2.f39458a, da2.f39459b.c());
        CU a11 = a(da2.f39460c, da2.f39459b.d(), da2.f39458a, da2.f39459b.b());
        SA sa2 = da2.f39459b;
        EU eu = new EU(sa2.c(), sa2.d(), sa2.b(), sa2.f44146d, sa2.f44147e, sa2.a());
        this.f42811d.d();
        return new C10261xU(da2.f39458a, eu, a11);
    }

    public final CU a(IA ia2, String str, boolean z10, String str2) {
        this.f42811d.b("convert rewriting flags");
        boolean z11 = CU.f39231s;
        final BU bu = new BU();
        Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.L4> b10 = ia2.b();
        Map<C4554l1, C4537k3> a10 = ia2.a();
        C4514j c4514j = this.f42808a;
        C5094Ef0 c5094Ef0 = this.f42809b;
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
        if (!b10.isEmpty() || !a10.isEmpty()) {
            new C7306fm(c4514j, c5094Ef0, hVar).a(b10, a10);
        }
        ia2.b().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BU.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.L4) obj2);
            }
        });
        ia2.a().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BU.this.a((C4554l1) obj, (C4537k3) obj2);
            }
        });
        ia2.f41001l.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BU.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2[]) obj2);
            }
        });
        ia2.f41006q.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BU.this.a((com.android.tools.r8.graph.A2) obj);
            }
        });
        new NA(this.f42808a).a(ia2, bu, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                OA.this.b((String) obj, (Set) obj2);
            }
        });
        new LA(this.f42808a).a(ia2, this.f42808a, bu, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                OA.this.b((String) obj, (Set) obj2);
            }
        });
        MA ma2 = new MA(this.f42808a, bu, str, z10, str2, ia2);
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                OA.this.a((String) obj, (Set) obj2);
            }
        };
        ma2.a();
        Iterator<com.android.tools.r8.graph.M2> it = ia2.g().values().iterator();
        while (it.hasNext()) {
            ma2.d(it.next());
        }
        Iterator it2 = ia2.f40998i.values().iterator();
        while (it2.hasNext()) {
            ma2.d((com.android.tools.r8.graph.M2) it2.next());
        }
        Iterator<com.android.tools.r8.graph.M2> it3 = ia2.c().values().iterator();
        while (it3.hasNext()) {
            ma2.d(it3.next());
        }
        Iterator it4 = ia2.f40999j.values().iterator();
        while (it4.hasNext()) {
            ma2.d(((com.android.tools.r8.graph.A2) it4.next()).s0());
        }
        Iterator it5 = ia2.f41000k.values().iterator();
        while (it5.hasNext()) {
            ma2.d(((com.android.tools.r8.graph.A2) it5.next()).s0());
        }
        ma2.a(ia2.e());
        for (com.android.tools.r8.graph.A2 a22 : ia2.f40998i.o()) {
            com.android.tools.r8.graph.M2 a11 = ma2.a(a22.f38297f);
            BU bu2 = ma2.f42225b;
            bu2.f38911c.put(a22.f38297f, a11);
        }
        for (com.android.tools.r8.graph.A2 a23 : ia2.f41000k.o()) {
            com.android.tools.r8.graph.M2 a12 = ma2.a(a23.f38297f);
            BU bu3 = ma2.f42225b;
            bu3.f38911c.put(a23.f38297f, a12);
        }
        ma2.a(ia2.f41001l);
        ma2.a(biConsumer);
        QA qa2 = new QA(this.f42808a);
        BiConsumer biConsumer2 = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                OA.this.b((String) obj, (Set) obj2);
            }
        };
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<com.android.tools.r8.graph.M2> it6 = ia2.j().o().iterator();
        while (it6.hasNext()) {
            identityHashMap.put(it6.next(), new PA());
        }
        qa2.a(ia2, identityHashMap);
        LinkedHashMap a13 = QA.a(identityHashMap);
        Map<com.android.tools.r8.graph.M2, Set<com.android.tools.r8.graph.A2>> j10 = ia2.j();
        for (PA pa2 : a13.values()) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = pa2.f43154b;
            int size = arrayList2.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList2.get(i11);
                i11++;
                com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) obj;
                if (!j10.get(m22).isEmpty()) {
                    arrayList.add(m22);
                }
            }
            if (!arrayList.isEmpty()) {
                pa2.f43154b.removeAll(arrayList);
            }
        }
        QA.a(a13, bu);
        biConsumer2.accept("The following types to wrap are missing: ", qa2.f43495c);
        biConsumer2.accept("The following methods cannot be handled by the wrappers due to their flags: ", qa2.f43496d);
        ia2.c().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj2, Object obj3) {
                OA.this.a(bu, (com.android.tools.r8.graph.M2) obj2, (com.android.tools.r8.graph.M2) obj3);
            }
        });
        b("Cannot register custom conversion due to missing type: ", this.f42810c);
        ia2.d().forEach(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                BU.this.a((com.android.tools.r8.graph.M2) obj2);
            }
        });
        ia2.f().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj2, Object obj3) {
                BU.this.a((com.android.tools.r8.graph.M2) obj2, (com.android.tools.r8.graph.M2) obj3);
            }
        });
        CU a14 = bu.a();
        this.f42811d.d();
        return a14;
    }

    public final void a(BU bu, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        C4514j c4514j = this.f42808a;
        com.android.tools.r8.graph.M2 m24 = (com.android.tools.r8.graph.M2) bu.f38909a.get(m22);
        if (m24 == null) {
            this.f42810c.add(m22);
            return;
        }
        bu.f38923o.a(m22, new C9796ui(c4514j.b().a(m23, c4514j.b().a(m22, m24), c4514j.b().f38114o0), c4514j.b().a(m23, c4514j.b().a(m24, m22), c4514j.b().f38114o0)));
    }

    public final void a(String str, Set set) {
        ArrayList arrayList = new ArrayList(set);
        arrayList.sort(new C4570lh());
        a(str, arrayList);
    }

    public final void a(String str, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        this.f42809b.c("Specification conversion: " + str + ((Object) arrayList));
    }
}
