package pf;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.m0;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nGroupingJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupingJVM.kt\nkotlin/collections/GroupingKt__GroupingJVMKt\n+ 2 Grouping.kt\nkotlin/collections/GroupingKt__GroupingKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n143#2:53\n80#2,4:54\n85#2:59\n1#3:58\n1915#4,2:60\n*S KotlinDebug\n*F\n+ 1 GroupingJVM.kt\nkotlin/collections/GroupingKt__GroupingJVMKt\n*L\n22#1:53\n22#1:54,4\n22#1:59\n48#1:60,2\n*E\n"})
public class C14964b0 {
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K> Map<K, Integer> a(@NotNull Z<T, ? extends K> z10) {
        kotlin.jvm.internal.M.p(z10, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> b10 = z10.b();
        while (b10.hasNext()) {
            K a10 = z10.a(b10.next());
            Object obj = linkedHashMap.get(a10);
            if (obj == null && !linkedHashMap.containsKey(a10)) {
                obj = new m0.f();
            }
            m0.f fVar = (m0.f) obj;
            fVar.f95752b++;
            linkedHashMap.put(a10, fVar);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            kotlin.jvm.internal.M.n(entry, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace, R of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace>");
            kotlin.jvm.internal.w0.m(entry).setValue(Integer.valueOf(((m0.f) entry.getValue()).f95752b));
        }
        return kotlin.jvm.internal.w0.k(linkedHashMap);
    }

    @Ef.f
    @InterfaceC14410f0
    public static final <K, V, R> Map<K, R> b(Map<K, V> map, Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> f10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(f10, "f");
        for (Map.Entry<K, V> entry : map.entrySet()) {
            kotlin.jvm.internal.M.n(entry, "null cannot be cast to non-null type kotlin.collections.MutableMap.MutableEntry<K of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace, R of kotlin.collections.GroupingKt__GroupingJVMKt.mapValuesInPlace>");
            kotlin.jvm.internal.w0.m(entry).setValue(f10.invoke(entry));
        }
        return kotlin.jvm.internal.w0.k(map);
    }
}
