package pf;

import java.util.Map;
import java.util.NoSuchElementException;
import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;

@kotlin.jvm.internal.t0({"SMAP\nMapWithDefault.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapWithDefault.kt\nkotlin/collections/MapsKt__MapWithDefaultKt\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,111:1\n349#2,6:112\n*S KotlinDebug\n*F\n+ 1 MapWithDefault.kt\nkotlin/collections/MapsKt__MapWithDefaultKt\n*L\n24#1:112,6\n*E\n"})
public class m0 {
    @Lf.j(name = "getOrImplicitDefaultNullable")
    @InterfaceC14410f0
    public static final <K, V> V a(@NotNull Map<K, ? extends V> map, K k10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        if (map instanceof j0) {
            return (V) ((j0) map).W6(k10);
        }
        V v10 = map.get(k10);
        if (v10 != null || map.containsKey(k10)) {
            return v10;
        }
        throw new NoSuchElementException("Key " + ((Object) k10) + " is missing in the map.");
    }

    @NotNull
    public static final <K, V> Map<K, V> b(@NotNull Map<K, ? extends V> map, @NotNull Mf.l<? super K, ? extends V> defaultValue) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return map instanceof j0 ? b(((j0) map).e2(), defaultValue) : new k0(map, defaultValue);
    }

    @Lf.j(name = "withDefaultMutable")
    @NotNull
    public static final <K, V> Map<K, V> c(@NotNull Map<K, V> map, @NotNull Mf.l<? super K, ? extends V> defaultValue) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return map instanceof s0 ? c(((s0) map).e2(), defaultValue) : new t0(map, defaultValue);
    }
}
