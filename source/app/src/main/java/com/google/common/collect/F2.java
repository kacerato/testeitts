package com.google.common.collect;

import com.google.common.collect.AbstractC12596z1;
import com.google.common.collect.S2;
import java.util.Map;

@X
@v2.b
public class F2<R, C, V> extends AbstractC12596z1<R, C, V> {

    public final R f65764d;

    public final C f65765e;

    public final V f65766f;

    public F2(R r10, C c10, V v10) {
        this.f65764d = (R) w2.H.E(r10);
        this.f65765e = (C) w2.H.E(c10);
        this.f65766f = (V) w2.H.E(v10);
    }

    @Override
    public AbstractC12529i1<R, V> B(C c10) {
        w2.H.E(c10);
        return g(c10) ? AbstractC12529i1.z(this.f65764d, this.f65766f) : AbstractC12529i1.y();
    }

    @Override
    public AbstractC12529i1<C, Map<R, V>> A() {
        return AbstractC12529i1.z(this.f65765e, AbstractC12529i1.z(this.f65764d, this.f65766f));
    }

    @Override
    public AbstractC12564r1<S2.a<R, C, V>> b() {
        return AbstractC12564r1.A(AbstractC12596z1.i(this.f65764d, this.f65765e, this.f65766f));
    }

    @Override
    public AbstractC12596z1.b q() {
        return AbstractC12596z1.b.a(this, new int[]{0}, new int[]{0});
    }

    @Override
    public AbstractC12505c1<V> c() {
        return AbstractC12564r1.A(this.f65766f);
    }

    @Override
    public int size() {
        return 1;
    }

    @Override
    public AbstractC12529i1<R, Map<C, V>> u() {
        return AbstractC12529i1.z(this.f65764d, AbstractC12529i1.z(this.f65765e, this.f65766f));
    }

    public F2(S2.a<R, C, V> aVar) {
        this(aVar.b(), aVar.a(), aVar.getValue());
    }
}
