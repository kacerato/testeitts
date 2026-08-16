package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public abstract class Z0<E> extends AbstractC12521g1<E> {

    @v2.c
    public static class a implements Serializable {

        public static final long f66395c = 0;

        public final AbstractC12505c1<?> f66396b;

        public a(AbstractC12505c1<?> abstractC12505c1) {
            this.f66396b = abstractC12505c1;
        }

        public Object a() {
            return this.f66396b.a();
        }
    }

    @v2.c
    private void K(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public abstract AbstractC12505c1<E> Q();

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return Q().contains(obj);
    }

    @Override
    public boolean h() {
        return Q().h();
    }

    @Override
    public boolean isEmpty() {
        return Q().isEmpty();
    }

    @Override
    @v2.c
    public Object j() {
        return new a(Q());
    }

    @Override
    public int size() {
        return Q().size();
    }
}
