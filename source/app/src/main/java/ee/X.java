package ee;

import java.util.Map;

public interface X<K, V> extends Map<K, V> {
    boolean A7(he.j0<? super K, ? super V> j0Var);

    boolean F4(he.j0<? super K, ? super V> j0Var);

    boolean G(he.k0<? super K> k0Var);

    boolean S(he.k0<? super V> k0Var);

    @Override
    V putIfAbsent(K k10, V v10);

    void r0(Ud.g<V, V> gVar);
}
