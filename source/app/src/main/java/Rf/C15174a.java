package rf;

import Ef.f;
import Lf.j;
import java.util.Map;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.w0;
import nf.InterfaceC14422l0;

@j(name = "CollectionsJDK8Kt")
public final class C15174a {
    /* JADX WARN: Multi-variable type inference failed */
    @f
    @InterfaceC14422l0(version = "1.2")
    public static final <K, V> V a(Map<? extends K, ? extends V> map, K k10, V v10) {
        M.p(map, "<this>");
        return map.getOrDefault(k10, v10);
    }

    @f
    @InterfaceC14422l0(version = "1.2")
    public static final <K, V> boolean b(Map<? extends K, ? extends V> map, K k10, V v10) {
        M.p(map, "<this>");
        return w0.k(map).remove(k10, v10);
    }
}
