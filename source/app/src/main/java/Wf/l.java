package Wf;

import Wf.i;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public interface l<D, E, V> extends q<D, E, V>, i<V> {

    public interface a<D, E, V> extends i.a<V>, Mf.q<D, E, V, P0> {
    }

    @Override
    @NotNull
    a<D, E, V> a();

    void m(D d10, E e10, V v10);
}
