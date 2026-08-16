package com.google.common.collect;

import java.io.Serializable;
import java.util.List;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public final class r extends Ordering<Object> implements Serializable {

    public static final r f66820d = new r();

    public static final long f66821e = 0;

    @Override
    public <S> Ordering<S> F() {
        return this;
    }

    @Override
    public <E> List<E> G(Iterable<E> iterable) {
        return M1.r(iterable);
    }

    public final Object I() {
        return f66820d;
    }

    @Override
    public int compare(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return 0;
    }

    @Override
    public <E> AbstractC12521g1<E> l(Iterable<E> iterable) {
        return AbstractC12521g1.p(iterable);
    }

    public String toString() {
        return "Ordering.allEqual()";
    }
}
