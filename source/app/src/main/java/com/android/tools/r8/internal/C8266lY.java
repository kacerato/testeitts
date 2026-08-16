package com.android.tools.r8.internal;

import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4554l1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import yd.C16181m;

public class C8266lY {

    public static final boolean f49992a = true;

    public static void a(C7767iY c7767iY, StringConsumer stringConsumer) {
        C8266lY c8266lY = new C8266lY();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("identifier", c7767iY.d().b());
        linkedHashMap.put("configuration_format_version", 101);
        linkedHashMap.put("required_compilation_api_level", Integer.valueOf(c7767iY.d().c().d()));
        linkedHashMap.put("synthesized_library_classes_package_prefix", c7767iY.d().d().replace('/', '.'));
        linkedHashMap.put("support_all_callbacks_from_library", Boolean.valueOf(c7767iY.d().f44147e));
        linkedHashMap.put("common_flags", c8266lY.c(c7767iY.a()));
        linkedHashMap.put("program_flags", c8266lY.c(c7767iY.c()));
        linkedHashMap.put("library_flags", c8266lY.c(c7767iY.b()));
        linkedHashMap.put("shrinker_config", c7767iY.d().a());
        stringConsumer.accept(new C5713Oz().a(linkedHashMap), new C8099kY());
    }

    public final TreeMap b(Map map) {
        final TreeMap treeMap = new TreeMap();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8266lY.this.a(treeMap, (AbstractC4592n1) obj, (AbstractC4592n1) obj2);
            }
        });
        return treeMap;
    }

    public final ArrayList c(Map map) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(map.o());
        arrayList2.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C8266lY.a((V2) obj, (V2) obj2);
            }
        });
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            V2 v22 = (V2) obj;
            IA ia2 = (IA) map.get(v22);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("api_level_below_or_equal", Integer.valueOf(v22.f44943a.d()));
            C2 c22 = v22.f44944b;
            if (c22 != null) {
                linkedHashMap.put("api_level_greater_or_equal", Integer.valueOf(c22.d()));
            }
            if (!ia2.i().isEmpty()) {
                linkedHashMap.put("rewrite_prefix", new TreeMap(ia2.i()));
            }
            if (!ia2.h().isEmpty()) {
                final TreeMap treeMap = new TreeMap();
                ia2.h().forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        TreeMap.this.put((String) obj2, new TreeMap((Map) obj3));
                    }
                });
                linkedHashMap.put("rewrite_derived_prefix", treeMap);
            }
            if (!ia2.f40991b.isEmpty()) {
                ArrayList arrayList3 = new ArrayList(ia2.f40991b);
                Collections.sort(arrayList3);
                linkedHashMap.put("dont_rewrite_prefix", arrayList3);
            }
            if (!ia2.f40992c.isEmpty()) {
                ArrayList arrayList4 = new ArrayList(ia2.f40992c);
                Collections.sort(arrayList4);
                linkedHashMap.put("maintain_prefix", arrayList4);
            }
            if (!ia2.e().isEmpty()) {
                final TreeMap treeMap2 = new TreeMap();
                ia2.e().forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C8266lY.this.a(treeMap2, (com.android.tools.r8.graph.M2) obj2, (JA) obj3);
                    }
                });
                linkedHashMap.put("emulate_interface", treeMap2);
            }
            if (!ia2.f40995f.isEmpty()) {
                linkedHashMap.put("retarget_static_field", b(ia2.f40995f));
            }
            if (!ia2.g().isEmpty()) {
                linkedHashMap.put("retarget_method", b(ia2.g()));
            }
            if (!ia2.f41000k.isEmpty()) {
                linkedHashMap.put("retarget_method", b(ia2.f41000k));
            }
            if (!ia2.f40998i.isEmpty()) {
                linkedHashMap.put("retarget_method_with_emulated_dispatch", b(ia2.f40998i));
            }
            if (!ia2.f41000k.isEmpty()) {
                linkedHashMap.put("retarget_method_with_emulated_dispatch", b(ia2.f41000k));
            }
            if (!ia2.d().isEmpty()) {
                linkedHashMap.put("dont_retarget", a(ia2.d()));
            }
            if (!ia2.f().isEmpty()) {
                linkedHashMap.put("backport", b(ia2.f()));
            }
            if (!ia2.f41001l.isEmpty()) {
                linkedHashMap.put("api_generic_types_conversion", a(ia2.f41001l));
            }
            if (!ia2.j().isEmpty()) {
                a(linkedHashMap, ia2.j());
            }
            if (!ia2.c().isEmpty()) {
                linkedHashMap.put("custom_conversion", b(ia2.c()));
            }
            if (!ia2.f41006q.isEmpty()) {
                linkedHashMap.put("never_outline_api", a(ia2.f41006q));
            }
            if (!ia2.b().isEmpty()) {
                linkedHashMap.put("amend_library_method", a(ia2.b()));
            }
            if (!ia2.a().isEmpty()) {
                linkedHashMap.put("amend_library_field", a(ia2.a()));
            }
            arrayList.add(linkedHashMap);
        }
        return arrayList;
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

    public final void a(TreeMap treeMap, com.android.tools.r8.graph.M2 m22, JA ja2) {
        TreeMap treeMap2 = new TreeMap();
        if (!f49992a) {
            ja2.getClass();
            if (ja2 instanceof KA) {
                throw new AssertionError();
            }
        }
        treeMap.put(a(m22), treeMap2);
        treeMap2.put("rewrittenType", a(ja2.f41338a));
        treeMap2.put("emulatedMethods", a(ja2.f41339b));
    }

    public final void a(LinkedHashMap linkedHashMap, Map map) {
        final ArrayList arrayList = new ArrayList();
        final TreeMap treeMap = new TreeMap();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8266lY.this.a(arrayList, treeMap, (com.android.tools.r8.graph.M2) obj, (Set) obj2);
            }
        });
        if (!arrayList.isEmpty()) {
            linkedHashMap.put("wrapper_conversion", arrayList);
        }
        if (treeMap.isEmpty()) {
            return;
        }
        linkedHashMap.put("wrapper_conversion_excluding", treeMap);
    }

    public final void a(List list, Map map, com.android.tools.r8.graph.M2 m22, Set set) {
        if (set.isEmpty()) {
            list.add(a(m22));
        } else {
            map.put(a(m22), a(set));
        }
    }

    public final ArrayList a(Map map) {
        final ArrayList arrayList = new ArrayList();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8266lY.this.a(arrayList, (AbstractC4592n1) obj, (AbstractC4458g) obj2);
            }
        });
        return arrayList;
    }

    public final ArrayList a(Set set) {
        final ArrayList arrayList = new ArrayList();
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8266lY.this.a(arrayList, (AbstractC4592n1) obj);
            }
        });
        Collections.sort(arrayList);
        return arrayList;
    }

    public final void a(List list, AbstractC4592n1 abstractC4592n1) {
        list.add(a(abstractC4592n1));
    }

    public final void a(Map map, AbstractC4592n1 abstractC4592n1, AbstractC4592n1 abstractC4592n12) {
        map.put(a(abstractC4592n1), a(abstractC4592n12));
    }

    public final TreeMap a(AbstractC8552nC abstractC8552nC) {
        final TreeMap treeMap = new TreeMap();
        abstractC8552nC.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8266lY.this.a(treeMap, (AbstractC4592n1) obj, (com.android.tools.r8.graph.A2[]) obj2);
            }
        });
        return treeMap;
    }

    public final void a(Map map, AbstractC4592n1 abstractC4592n1, com.android.tools.r8.graph.A2[] a2Arr) {
        String a10 = a(abstractC4592n1);
        ArrayList arrayList = new ArrayList();
        int length = a2Arr.length - 1;
        if (a2Arr[length] != null) {
            arrayList.add(-1);
            arrayList.add(a(a2Arr[length]));
        }
        for (int i10 = 0; i10 < a2Arr.length - 1; i10++) {
            if (a2Arr[i10] != null) {
                arrayList.add(Integer.valueOf(i10));
                arrayList.add(a(a2Arr[i10]));
            }
        }
        map.put(a10, arrayList.toArray());
    }

    public static String a(AbstractC4592n1 abstractC4592n1) {
        if (abstractC4592n1 instanceof com.android.tools.r8.graph.M2) {
            return abstractC4592n1.toString();
        }
        if (abstractC4592n1 instanceof C4554l1) {
            C4554l1 c4554l1 = (C4554l1) abstractC4592n1;
            return ((Object) c4554l1.getType()) + " " + ((Object) c4554l1.s0()) + C16181m.f130230g + ((Object) c4554l1.t0());
        }
        if (abstractC4592n1 instanceof com.android.tools.r8.graph.A2) {
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) abstractC4592n1;
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) a22.z0());
            sb2.append(" ");
            sb2.append((Object) a22.s0());
            sb2.append(C16181m.f130230g);
            sb2.append((Object) a22.t0());
            sb2.append("(");
            for (int i10 = 0; i10 < a22.x0().size(); i10++) {
                sb2.append((Object) a22.k(i10));
                if (i10 != a22.x0().size() - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append(")");
            return sb2.toString();
        }
        throw new C5417Jv0();
    }

    public final void a(List list, AbstractC4592n1 abstractC4592n1, AbstractC4458g abstractC4458g) {
        list.add(abstractC4458g.a(false) + " " + a(abstractC4592n1));
    }
}
