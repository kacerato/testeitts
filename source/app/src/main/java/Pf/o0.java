package pf;

import Xf.InterfaceC3312m;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import nf.InterfaceC14394D;
import nf.InterfaceC14401b;
import nf.InterfaceC14422l0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nMaps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,823:1\n415#1:833\n427#1:838\n525#1,6:843\n551#1,6:849\n1#2:824\n1266#3,4:825\n1266#3,4:829\n1266#3,4:834\n1266#3,4:839\n*S KotlinDebug\n*F\n+ 1 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n466#1:833\n481#1:838\n540#1:843,6\n566#1:849,6\n415#1:825,4\n427#1:829,4\n466#1:834,4\n481#1:839,4\n*E\n"})
public class o0 extends n0 {
    @NotNull
    public static final <K, V> Map<K, V> A(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            if (predicate.invoke(entry).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final <K, V> void A0(Map<K, V> map, K k10, V v10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        map.put(k10, v10);
    }

    @NotNull
    public static final <K, V> Map<K, V> B(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super K, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            if (predicate.invoke(entry.getKey()).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> B0(@NotNull InterfaceC3312m<? extends nf.Z<? extends K, ? extends V>> interfaceC3312m) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        return k0(C0(interfaceC3312m, new LinkedHashMap()));
    }

    @NotNull
    public static final <K, V> Map<K, V> C(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            if (!predicate.invoke(entry).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M C0(@NotNull InterfaceC3312m<? extends nf.Z<? extends K, ? extends V>> interfaceC3312m, @NotNull M destination) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        w0(destination, interfaceC3312m);
        return destination;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M D(@NotNull Map<? extends K, ? extends V> map, @NotNull M destination, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            if (!predicate.invoke(entry).booleanValue()) {
                destination.put(entry.getKey(), entry.getValue());
            }
        }
        return destination;
    }

    @NotNull
    public static <K, V> Map<K, V> D0(@NotNull Iterable<? extends nf.Z<? extends K, ? extends V>> iterable) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return k0(E0(iterable, new LinkedHashMap()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return z();
        }
        if (size != 1) {
            return E0(iterable, new LinkedHashMap(n0.j(collection.size())));
        }
        return n0.k((nf.Z) (iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next()));
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M E(@NotNull Map<? extends K, ? extends V> map, @NotNull M destination, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            if (predicate.invoke(entry).booleanValue()) {
                destination.put(entry.getKey(), entry.getValue());
            }
        }
        return destination;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M E0(@NotNull Iterable<? extends nf.Z<? extends K, ? extends V>> iterable, @NotNull M destination) {
        kotlin.jvm.internal.M.p(iterable, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        x0(destination, iterable);
        return destination;
    }

    @NotNull
    public static final <K, V> Map<K, V> F(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super V, Boolean> predicate) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            if (predicate.invoke(entry.getValue()).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static <K, V> Map<K, V> F0(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? J0(map) : n0.o(map) : z();
    }

    @Ef.f
    public static final <K, V> V G(Map<? extends K, ? extends V> map, K k10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return map.get(k10);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M G0(@NotNull Map<? extends K, ? extends V> map, @NotNull M destination) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        destination.putAll(map);
        return destination;
    }

    @Ef.f
    public static final <K, V> V H(Map<K, ? extends V> map, K k10, Mf.a<? extends V> defaultValue) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        V v10 = map.get(k10);
        return v10 == null ? defaultValue.invoke() : v10;
    }

    @NotNull
    public static final <K, V> Map<K, V> H0(@NotNull nf.Z<? extends K, ? extends V>[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        int length = zArr.length;
        return length != 0 ? length != 1 ? I0(zArr, new LinkedHashMap(n0.j(zArr.length))) : n0.k(zArr[0]) : z();
    }

    public static final <K, V> V I(@NotNull Map<K, ? extends V> map, K k10, @NotNull Mf.a<? extends V> defaultValue) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        V v10 = map.get(k10);
        return (v10 != null || map.containsKey(k10)) ? v10 : defaultValue.invoke();
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M I0(@NotNull nf.Z<? extends K, ? extends V>[] zArr, @NotNull M destination) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        y0(destination, zArr);
        return destination;
    }

    public static final <K, V> V J(@NotNull Map<K, V> map, K k10, @NotNull Mf.a<? extends V> defaultValue) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        V v10 = map.get(k10);
        if (v10 != null) {
            return v10;
        }
        V invoke = defaultValue.invoke();
        map.put(k10, invoke);
        return invoke;
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static <K, V> Map<K, V> J0(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return new LinkedHashMap(map);
    }

    @InterfaceC14422l0(version = "1.1")
    public static final <K, V> V K(@NotNull Map<K, ? extends V> map, K k10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return (V) m0.a(map, k10);
    }

    @Ef.f
    public static final <K, V> nf.Z<K, V> K0(Map.Entry<? extends K, ? extends V> entry) {
        kotlin.jvm.internal.M.p(entry, "<this>");
        return new nf.Z<>(entry.getKey(), entry.getValue());
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <K, V> HashMap<K, V> L() {
        return new HashMap<>();
    }

    @NotNull
    public static final <K, V> HashMap<K, V> M(@NotNull nf.Z<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.M.p(pairs, "pairs");
        HashMap<K, V> hashMap = new HashMap<>(n0.j(pairs.length));
        y0(hashMap, pairs);
        return hashMap;
    }

    /* JADX WARN: Incorrect types in method signature: <M::Ljava/util/Map<**>;:TR;R:Ljava/lang/Object;>(TM;LMf/a<+TR;>;)TR; */
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final Object N(Map map, Mf.a defaultValue) {
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return map.isEmpty() ? defaultValue.invoke() : map;
    }

    @Ef.f
    public static final <K, V> boolean O(Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return !map.isEmpty();
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V> boolean P(Map<? extends K, ? extends V> map) {
        return map == null || map.isEmpty();
    }

    @Ef.f
    public static final <K, V> Iterator<Map.Entry<K, V>> Q(Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return map.entrySet().iterator();
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <K, V> LinkedHashMap<K, V> R() {
        return new LinkedHashMap<>();
    }

    @NotNull
    public static final <K, V> LinkedHashMap<K, V> S(@NotNull nf.Z<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.M.p(pairs, "pairs");
        return (LinkedHashMap) I0(pairs, new LinkedHashMap(n0.j(pairs.length)));
    }

    @NotNull
    public static final <K, V, R> Map<R, V> T(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(n0.j(map.size()));
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            linkedHashMap.put(transform.invoke(entry), entry.getValue());
        }
        return linkedHashMap;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, R, M extends Map<? super R, ? super V>> M U(@NotNull Map<? extends K, ? extends V> map, @NotNull M destination, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            destination.put(transform.invoke(entry), entry.getValue());
        }
        return destination;
    }

    @Ef.f
    public static final <K, V> Map<K, V> V() {
        return z();
    }

    @NotNull
    public static <K, V> Map<K, V> W(@NotNull nf.Z<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.M.p(pairs, "pairs");
        return pairs.length > 0 ? I0(pairs, new LinkedHashMap(n0.j(pairs.length))) : z();
    }

    @NotNull
    public static final <K, V, R> Map<K, R> X(@NotNull Map<? extends K, ? extends V> map, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(n0.j(map.size()));
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), transform.invoke(entry));
        }
        return linkedHashMap;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, R, M extends Map<? super K, ? super R>> M Y(@NotNull Map<? extends K, ? extends V> map, @NotNull M destination, @NotNull Mf.l<? super Map.Entry<? extends K, ? extends V>, ? extends R> transform) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            destination.put(entry.getKey(), transform.invoke(entry));
        }
        return destination;
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> Z(@NotNull Map<? extends K, ? extends V> map, @NotNull InterfaceC3312m<? extends K> keys) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(keys, "keys");
        Map J02 = J0(map);
        M.J0(J02.o(), keys);
        return k0(J02);
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> a0(@NotNull Map<? extends K, ? extends V> map, @NotNull Iterable<? extends K> keys) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(keys, "keys");
        Map J02 = J0(map);
        M.K0(J02.o(), keys);
        return k0(J02);
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> b0(@NotNull Map<? extends K, ? extends V> map, K k10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        Map J02 = J0(map);
        J02.remove(k10);
        return k0(J02);
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <K, V> Map<K, V> c0(@NotNull Map<? extends K, ? extends V> map, @NotNull K[] keys) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(keys, "keys");
        Map J02 = J0(map);
        M.M0(J02.o(), keys);
        return k0(J02);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <K, V> void d0(Map<K, V> map, InterfaceC3312m<? extends K> keys) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(keys, "keys");
        M.J0(map.o(), keys);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <K, V> void e0(Map<K, V> map, Iterable<? extends K> keys) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(keys, "keys");
        M.K0(map.o(), keys);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <K, V> void f0(Map<K, V> map, K k10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        map.remove(k10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <K, V> void g0(Map<K, V> map, K[] keys) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(keys, "keys");
        M.M0(map.o(), keys);
    }

    @Ef.f
    @Lf.j(name = "mutableIterator")
    public static final <K, V> Iterator<Map.Entry<K, V>> h0(Map<K, V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return map.entrySet().iterator();
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final <K, V> Map<K, V> i0() {
        return new LinkedHashMap();
    }

    @NotNull
    public static final <K, V> Map<K, V> j0(@NotNull nf.Z<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.M.p(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(n0.j(pairs.length));
        y0(linkedHashMap, pairs);
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> k0(@NotNull Map<K, ? extends V> map) {
        kotlin.jvm.internal.M.p(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? map : n0.o(map) : z();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <K, V> Map<K, V> l0(Map<K, ? extends V> map) {
        return map == 0 ? z() : map;
    }

    @NotNull
    public static final <K, V> Map<K, V> m0(@NotNull Map<? extends K, ? extends V> map, @NotNull InterfaceC3312m<? extends nf.Z<? extends K, ? extends V>> pairs) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        w0(linkedHashMap, pairs);
        return k0(linkedHashMap);
    }

    @NotNull
    public static final <K, V> Map<K, V> n0(@NotNull Map<? extends K, ? extends V> map, @NotNull Iterable<? extends nf.Z<? extends K, ? extends V>> pairs) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        if (map.isEmpty()) {
            return D0(pairs);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        x0(linkedHashMap, pairs);
        return linkedHashMap;
    }

    @NotNull
    public static <K, V> Map<K, V> o0(@NotNull Map<? extends K, ? extends V> map, @NotNull Map<? extends K, ? extends V> map2) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(map2, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> p0(@NotNull Map<? extends K, ? extends V> map, @NotNull nf.Z<? extends K, ? extends V> pair) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pair, "pair");
        if (map.isEmpty()) {
            return n0.k(pair);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(pair.e(), pair.f());
        return linkedHashMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> q0(@NotNull Map<? extends K, ? extends V> map, @NotNull nf.Z<? extends K, ? extends V>[] pairs) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        if (map.isEmpty()) {
            return H0(pairs);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        y0(linkedHashMap, pairs);
        return linkedHashMap;
    }

    @Ef.f
    public static final <K, V> void r0(Map<? super K, ? super V> map, InterfaceC3312m<? extends nf.Z<? extends K, ? extends V>> pairs) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        w0(map, pairs);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final <K, V> Map<K, V> s(int i10, @InterfaceC14401b Mf.l<? super Map<K, V>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        Map h10 = n0.h(i10);
        builderAction.invoke(h10);
        return n0.d(h10);
    }

    @Ef.f
    public static final <K, V> void s0(Map<? super K, ? super V> map, Iterable<? extends nf.Z<? extends K, ? extends V>> pairs) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        x0(map, pairs);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.6")
    public static final <K, V> Map<K, V> t(@InterfaceC14401b Mf.l<? super Map<K, V>, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        Map g10 = n0.g();
        builderAction.invoke(g10);
        return n0.d(g10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <K, V> void t0(Map<? super K, ? super V> map, Map<K, ? extends V> map2) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(map2, "map");
        map.putAll(map2);
    }

    @Ef.f
    public static final <K, V> K u(Map.Entry<? extends K, ? extends V> entry) {
        kotlin.jvm.internal.M.p(entry, "<this>");
        return entry.getKey();
    }

    @Ef.f
    public static final <K, V> void u0(Map<? super K, ? super V> map, nf.Z<? extends K, ? extends V> pair) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pair, "pair");
        map.put(pair.e(), pair.f());
    }

    @Ef.f
    public static final <K, V> V v(Map.Entry<? extends K, ? extends V> entry) {
        kotlin.jvm.internal.M.p(entry, "<this>");
        return entry.getValue();
    }

    @Ef.f
    public static final <K, V> void v0(Map<? super K, ? super V> map, nf.Z<? extends K, ? extends V>[] pairs) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        y0(map, pairs);
    }

    @Ef.f
    public static final <K, V> boolean w(Map<? extends K, ? extends V> map, K k10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return map.containsKey(k10);
    }

    public static final <K, V> void w0(@NotNull Map<? super K, ? super V> map, @NotNull InterfaceC3312m<? extends nf.Z<? extends K, ? extends V>> pairs) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        for (nf.Z<? extends K, ? extends V> z10 : pairs) {
            map.put(z10.a(), z10.b());
        }
    }

    @Ef.f
    public static final <K> boolean x(Map<? extends K, ?> map, K k10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return map.containsKey(k10);
    }

    public static final <K, V> void x0(@NotNull Map<? super K, ? super V> map, @NotNull Iterable<? extends nf.Z<? extends K, ? extends V>> pairs) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        for (nf.Z<? extends K, ? extends V> z10 : pairs) {
            map.put(z10.a(), z10.b());
        }
    }

    @Ef.f
    public static final <K, V> boolean y(Map<K, ? extends V> map, V v10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return map.containsValue(v10);
    }

    public static final <K, V> void y0(@NotNull Map<? super K, ? super V> map, @NotNull nf.Z<? extends K, ? extends V>[] pairs) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(pairs, "pairs");
        for (nf.Z<? extends K, ? extends V> z10 : pairs) {
            map.put(z10.a(), z10.b());
        }
    }

    @NotNull
    public static <K, V> Map<K, V> z() {
        W w10 = W.f103834b;
        kotlin.jvm.internal.M.n(w10, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return w10;
    }

    @Ef.f
    @InterfaceC14394D
    public static final <K, V> V z0(Map<? extends K, V> map, K k10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        return (V) kotlin.jvm.internal.w0.k(map).remove(k10);
    }
}
