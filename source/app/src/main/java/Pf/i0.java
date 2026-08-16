package pf;

import java.util.Map;

@Lf.j(name = "MapAccessorsKt")
public final class i0 {
    @Ef.f
    public static final <V, V1 extends V> V1 a(Map<? super String, ? extends V> map, Object obj, Wf.n<?> property) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(property, "property");
        return (V1) m0.a(map, property.getName());
    }

    @Ef.f
    @Lf.j(name = "getVar")
    public static final <V, V1 extends V> V1 b(Map<? super String, ? extends V> map, Object obj, Wf.n<?> property) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(property, "property");
        return (V1) m0.a(map, property.getName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    public static final <V> void c(Map<? super String, ? super V> map, Object obj, Wf.n<?> property, V v10) {
        kotlin.jvm.internal.M.p(map, "<this>");
        kotlin.jvm.internal.M.p(property, "property");
        map.put(property.getName(), v10);
    }
}
