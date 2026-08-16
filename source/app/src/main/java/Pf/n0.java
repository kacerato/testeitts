package pf;

import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentMap;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nMapsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1#2:158\n*E\n"})
public class n0 extends m0 {

    public static final int f103873a = 1073741824;

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <K, V> Map<K, V> d(@NotNull Map<K, V> builder) {
        kotlin.jvm.internal.M.p(builder, "builder");
        return ((qf.d) builder).n();
    }

    @Ef.f
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V> Map<K, V> e(int i10, Mf.l<? super Map<K, V>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        Map h10 = h(i10);
        builderAction.invoke(h10);
        return d(h10);
    }

    @Ef.f
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V> Map<K, V> f(Mf.l<? super Map<K, V>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        Map g10 = g();
        builderAction.invoke(g10);
        return d(g10);
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <K, V> Map<K, V> g() {
        return new qf.d();
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static <K, V> Map<K, V> h(int i10) {
        return new qf.d(i10);
    }

    public static final <K, V> V i(@NotNull ConcurrentMap<K, V> concurrentMap, K k10, @NotNull Mf.a<? extends V> defaultValue) {
        kotlin.jvm.internal.M.p(concurrentMap, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        V v10 = concurrentMap.get(k10);
        if (v10 != null) {
            return v10;
        }
        V invoke = defaultValue.invoke();
        V putIfAbsent = concurrentMap.putIfAbsent(k10, invoke);
        return putIfAbsent == null ? invoke : putIfAbsent;
    }

    @InterfaceC14410f0
    public static int j(int i10) {
        if (i10 < 0) {
            return i10;
        }
        if (i10 < 3) {
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    @NotNull
    public static <K, V> Map<K, V> k(@NotNull nf.Z<? extends K, ? extends V> pair) {
        kotlin.jvm.internal.M.p(pair, "pair");
        Map<K, V> singletonMap = Collections.singletonMap(pair.e(), pair.f());
        kotlin.jvm.internal.M.o(singletonMap, "singletonMap(...)");
        return singletonMap;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <K, V> SortedMap<K, V> l(@NotNull Comparator<? super K> comparator, @NotNull nf.Z<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        TreeMap treeMap = new TreeMap(comparator);
        o0.y0(treeMap, pairs);
        return treeMap;
    }

    @NotNull
    public static final <K extends Comparable<? super K>, V> SortedMap<K, V> m(@NotNull nf.Z<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.M.p(pairs, "pairs");
        TreeMap treeMap = new TreeMap();
        o0.y0(treeMap, pairs);
        return treeMap;
    }

    @Ef.f
    public static final Properties n(Map<String, String> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        Properties properties = new Properties();
        properties.putAll(map);
        return properties;
    }

    @NotNull
    public static final <K, V> Map<K, V> o(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> singletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        kotlin.jvm.internal.M.o(singletonMap, "with(...)");
        return singletonMap;
    }

    @Ef.f
    public static final <K, V> Map<K, V> p(Map<K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return o(map);
    }

    @NotNull
    public static final <K extends Comparable<? super K>, V> SortedMap<K, V> q(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return new TreeMap(map);
    }

    @NotNull
    public static final <K, V> SortedMap<K, V> r(@NotNull Map<? extends K, ? extends V> map, @NotNull Comparator<? super K> comparator) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        TreeMap treeMap = new TreeMap(comparator);
        treeMap.putAll(map);
        return treeMap;
    }
}
