package com.android.tools.r8.internal;

import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import yd.C16181m;

public class C9267rY {

    public final C4724u1 f52058a;

    public final TreeMap f52059b = new TreeMap();

    public int f52060c = 0;

    public C9267rY(C4724u1 c4724u1) {
        this.f52058a = c4724u1;
    }

    public final Object[] a(C6257Yj c6257Yj) {
        String a10 = a(c6257Yj.f46071a);
        int i10 = c6257Yj.f46072b;
        return new Object[]{a10, Integer.toString(i10 == 0 ? -1 : DU.a(i10))};
    }

    public final void b(String str, Map map, LinkedHashMap linkedHashMap) {
        if (map.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9267rY.this.a(arrayList, (AbstractC4592n1) obj, (AbstractC4458g) obj2);
            }
        });
        linkedHashMap.put(str, arrayList);
    }

    public final TreeMap b(Map map) {
        final TreeMap treeMap = new TreeMap();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9267rY.this.a(treeMap, (AbstractC4592n1) obj, (InterfaceC9645tn0) obj2);
            }
        });
        return treeMap;
    }

    public static int a(V2 v22, V2 v23) {
        int compareTo = v22.f44943a.compareTo(v23.f44943a);
        if (compareTo == 0) {
            C2 c22 = v22.f44944b;
            if (c22 == null) {
                compareTo = v23.f44944b == null ? 0 : 1;
            } else {
                C2 c23 = v23.f44944b;
                compareTo = c23 == null ? -1 : c22.compareTo(c23);
            }
        }
        return -compareTo;
    }

    public static void a(C8934pY c8934pY, StringConsumer stringConsumer, C4724u1 c4724u1) {
        C9267rY c9267rY = new C9267rY(c4724u1);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        EU eu = c8934pY.f51544a;
        linkedHashMap.put("identifier", eu.c());
        linkedHashMap.put("required_compilation_api_level", Integer.valueOf(eu.d().d()));
        linkedHashMap.put("synthesized_library_classes_package_prefix", eu.e());
        linkedHashMap.put("support_all_callbacks_from_library", Boolean.valueOf(eu.f39885e));
        linkedHashMap.put("shrinker_config", eu.b());
        linkedHashMap.put("configuration_format_version", 200);
        linkedHashMap.put("common_flags", c9267rY.a(c8934pY.f51545b));
        linkedHashMap.put("program_flags", c9267rY.a(c8934pY.f51547d));
        linkedHashMap.put("library_flags", c9267rY.a(c8934pY.f51546c));
        linkedHashMap.put("package_map", c9267rY.f52059b);
        stringConsumer.accept(new C5713Oz().a(linkedHashMap), new C9101qY());
    }

    public final ArrayList a(HashMap hashMap) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(hashMap.o());
        arrayList2.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C9267rY.a((V2) obj, (V2) obj2);
            }
        });
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            V2 v22 = (V2) obj;
            CU cu = (CU) hashMap.get(v22);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("api_level_below_or_equal", Integer.valueOf(v22.f44943a.d()));
            C2 c22 = v22.f44944b;
            if (c22 != null) {
                linkedHashMap.put("api_level_greater_or_equal", Integer.valueOf(c22.d()));
            }
            a("rewrite_type", cu.n(), linkedHashMap);
            Set<com.android.tools.r8.graph.M2> k10 = cu.k();
            if (!k10.isEmpty()) {
                linkedHashMap.put("maintain_type", a(k10));
            }
            a("rewrite_derived_type_only", cu.m(), linkedHashMap);
            a("static_field_retarget", cu.o(), linkedHashMap);
            a("covariant_retarget", cu.d(), linkedHashMap);
            a("static_retarget", cu.p(), linkedHashMap);
            a("non_emulated_virtual_retarget", cu.l(), linkedHashMap);
            Map<com.android.tools.r8.graph.A2, C6830cu> h10 = cu.h();
            if (!h10.isEmpty()) {
                linkedHashMap.put("emulated_virtual_retarget", b(h10));
            }
            a("emulated_virtual_retarget_through_emulated_interface", cu.i(), linkedHashMap);
            a(linkedHashMap, cu.c());
            Map<com.android.tools.r8.graph.M2, C7163eu> g10 = cu.g();
            if (!g10.isEmpty()) {
                linkedHashMap.put("emulated_interface", b(g10));
            }
            LinkedHashMap<com.android.tools.r8.graph.M2, C6510ay0> q10 = cu.q();
            if (!q10.isEmpty()) {
                linkedHashMap.put("wrapper", a((LinkedHashMap) q10));
            }
            a("legacy_backport", cu.j(), linkedHashMap);
            Set<com.android.tools.r8.graph.M2> f10 = cu.f();
            if (!f10.isEmpty()) {
                linkedHashMap.put("dont_retarget", a(f10));
            }
            Map<com.android.tools.r8.graph.M2, C9796ui> e10 = cu.e();
            if (!e10.isEmpty()) {
                linkedHashMap.put("custom_conversion", b(e10));
            }
            b("amend_library_method", cu.b(), linkedHashMap);
            b("amend_library_field", cu.a(), linkedHashMap);
            arrayList.add(linkedHashMap);
        }
        return arrayList;
    }

    public final void a(String str, Map map, LinkedHashMap linkedHashMap) {
        if (map.isEmpty()) {
            return;
        }
        linkedHashMap.put(str, a(map));
    }

    public final void a(LinkedHashMap linkedHashMap, Map map) {
        if (map.isEmpty()) {
            return;
        }
        final TreeMap treeMap = new TreeMap();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9267rY.this.a(treeMap, (AbstractC4592n1) obj, (com.android.tools.r8.graph.A2[]) obj2);
            }
        });
        linkedHashMap.put("api_generic_types_conversion", treeMap);
    }

    public final void a(TreeMap treeMap, AbstractC4592n1 abstractC4592n1, com.android.tools.r8.graph.A2[] a2Arr) {
        String a10 = a(abstractC4592n1);
        String[] strArr = new String[a2Arr.length];
        for (int i10 = 0; i10 < a2Arr.length; i10++) {
            com.android.tools.r8.graph.A2 a22 = a2Arr[i10];
            strArr[i10] = a22 == null ? "" : a(a22);
        }
        treeMap.put(a10, strArr);
    }

    public final LinkedHashMap a(LinkedHashMap linkedHashMap) {
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9267rY.this.a(linkedHashMap2, (AbstractC4592n1) obj, (InterfaceC9645tn0) obj2);
            }
        });
        return linkedHashMap2;
    }

    public final void a(LinkedHashMap linkedHashMap, AbstractC4592n1 abstractC4592n1, InterfaceC9645tn0 interfaceC9645tn0) {
        linkedHashMap.put(a(abstractC4592n1), interfaceC9645tn0.a(this));
    }

    public final TreeMap a(Map map) {
        final TreeMap treeMap = new TreeMap();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9267rY.this.a(treeMap, (AbstractC4592n1) obj, (AbstractC4592n1) obj2);
            }
        });
        return treeMap;
    }

    public final void a(TreeMap treeMap, AbstractC4592n1 abstractC4592n1, AbstractC4592n1 abstractC4592n12) {
        treeMap.put(a(abstractC4592n1), a(abstractC4592n12));
    }

    public final void a(TreeMap treeMap, AbstractC4592n1 abstractC4592n1, InterfaceC9645tn0 interfaceC9645tn0) {
        treeMap.put(a(abstractC4592n1), interfaceC9645tn0.a(this));
    }

    public final ArrayList a(Collection collection) {
        final ArrayList arrayList = new ArrayList();
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9267rY.this.a(arrayList, (AbstractC4592n1) obj);
            }
        });
        arrayList.sort(Comparator.naturalOrder());
        return arrayList;
    }

    public final void a(List list, AbstractC4592n1 abstractC4592n1) {
        list.add(a(abstractC4592n1));
    }

    public final String a(AbstractC4592n1 abstractC4592n1) {
        if (abstractC4592n1 instanceof com.android.tools.r8.graph.M2) {
            return a((com.android.tools.r8.graph.M2) abstractC4592n1);
        }
        if (abstractC4592n1 instanceof C4554l1) {
            C4554l1 c4554l1 = (C4554l1) abstractC4592n1;
            return a(c4554l1.getType()) + " " + a(c4554l1.s0()) + C16181m.f130230g + ((Object) c4554l1.t0());
        }
        if (abstractC4592n1 instanceof com.android.tools.r8.graph.A2) {
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) abstractC4592n1;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a(a22.z0()));
            sb2.append(" ");
            sb2.append(a(a22.s0()));
            sb2.append(C16181m.f130230g);
            sb2.append((Object) a22.t0());
            sb2.append("(");
            for (int i10 = 0; i10 < a22.x0().size(); i10++) {
                sb2.append(a(a22.k(i10)));
                if (i10 != a22.x0().size() - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append(")");
            return sb2.toString();
        }
        throw new C5417Jv0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a(com.android.tools.r8.graph.M2 m22) {
        if (!m22.P0() && !m22.O0() && !m22.S0()) {
            if (m22.E0()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(a(m22.a(this.f52058a)));
                for (int i10 = 0; i10 < m22.y0(); i10++) {
                    sb2.append(okhttp3.v.f99450n);
                }
                return sb2.toString();
            }
            return ((String) this.f52059b.computeIfAbsent(m22.A0(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C9267rY.this.a((String) obj);
                }
            })) + m22.C0();
        }
        return m22.toString();
    }

    public final String a(String str) {
        return a();
    }

    public final String a() {
        int i10 = this.f52060c;
        if (i10 < 66) {
            this.f52060c = i10 + 1;
            return "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\u00e6\u00c6\u00f8\u00d8".charAt(i10) + "$";
        }
        throw new RuntimeException("MultiAPILevelMachineDesugaredLibrarySpecificationJsonExporter cannot encode the next package because the encoding ran out of characters. Extend the chars sequence or improve the encoding to fix this.");
    }

    public final void a(List list, AbstractC4592n1 abstractC4592n1, AbstractC4458g abstractC4458g) {
        list.add(abstractC4458g.a(false) + " " + a(abstractC4592n1));
    }
}
